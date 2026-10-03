# Kilo Server Contract Anchor (ADR-049)

> Local contract anchor for the Kilo CLI/TUI embedded HTTP server, per ADR-023
> contract-first policy. Captured from a live server on 2026-10-03.

## Source

- Binary: `kilo.exe` (Kilo CLI/TUI, observed session versions `7.6.2`–`7.7.7`)
- Listener: `127.0.0.1:4096` (binds loopback only by default; LAN access needs
  `--hostname 0.0.0.0` support or an OS-level port forward)
- Probe artifacts: `test/fixtures/kilo/` (trimmed from live responses)

## Verdict

The Kilo server is an **OpenCode-family superset**. Every surface CodeWalk
consumes per `CONTRACT_MATRIX.md` is present with compatible envelope shapes.
Adaptation follows **Strategy A** (direct connection + tolerant parsing); no
datasource fork is required.

## Endpoint availability (probed 200 OK)

| Surface | OpenCode path | Status |
|---|---|---|
| Session list/detail | `/session`, `/session/{id}` | present |
| Async prompt | `/session/{id}/prompt_async` | present |
| Session actions | `share` `diff` `todo` `revert` `unrevert` `init` `summarize` `command` `abort` `fork` | present |
| Session status | `/session/status` | present |
| Realtime | `/event`, `/global/event` (SSE) | present |
| Config | `GET/PATCH /config` (+ `/config/effective`, `/config/overlay`) | present |
| Catalog | `/provider`, `/agent`, `/command`, `/path` | present |
| Project/files | `/project`, `/project/current`, `/file`, `/file/content`, `/file/status`, `/find`, `/find/file`, `/find/symbol` | present |
| VCS | `/vcs` (+ `apply`, `diff`, `diff/raw`, `status`) | present |
| Worktree | `/experimental/worktree` (+ `diff`, `reset`) | present |
| Permissions | session-scoped `/session/{id}/permissions/{permissionID}` **and** `/permission/{requestID}/reply` | both generations present |
| Questions | `/question/{requestID}/reply|reject`, session-scoped variants | present |
| PTY | `/pty`, `/pty/{id}`, `/pty/{id}/connect`, `/pty/{id}/connect-token`, `/pty/shells` | present (richer than upstream snapshot) |

Kilo-specific supersets (not consumed by CodeWalk yet, capability-gate before
use): `/kilo/*` (cloud, auth-status, notifications), `/kilocode/*`
(agent-manager, background-jobs, notebook, marketplace), `/tui/*` (remote TUI
control), `/api/*` (newer namespaced API incl. `/api/pty`), `/memory/*`,
`/mcp/*`, `/network/*`, `/suggestion/*`, `/sync/*`, `/remote/*`,
`/background-process/*`, `/indexing/*`.

## Payload shapes (verified against live data)

### Session entry

```json
{
  "id": "ses_...", "slug": "eager-harbor", "projectID": "global",
  "directory": "C:\\Users\\10456", "path": "Users/10456",
  "parentID": "ses_...",            // singular string, nullable
  "summary": {"additions":0,"deletions":0,"files":0},
  "cost": 0, "tokens": {"input":0,"output":0,"reasoning":0,"cache":{"read":0,"write":0}},
  "title": "...", "agent": "code",
  "model": {"id":"glm-5.3","providerID":"zhipuai-coding-plan","variant":"default"},
  "version": "7.6.2",
  "time": {"created": 1790344533747, "updated": 1790344575663},
  "permission": [ {"permission":"question","pattern":"*","action":"deny"} ]
}
```

Compatibility notes:

- `parentID` is **singular**; `ChatSessionModel` already reads
  `parentID`/`parentId` (tolerant) — no change needed.
- `path` is a plain string here (OpenCode-era map shape is guarded by an
  `is Map` check) — safely ignored.
- Extra keys (`slug`, `tokens`, `permission`, `cost`) are additive.

### Message entry (`GET /session/{id}/message`)

```json
[{"info": {"id":"msg_...","sessionID":"ses_...","role":"user",
  "time":{"created":1790344536199},"summary":{"diffs":[]},
  "agent":"code","model":{"providerID":"zhipuai-coding-plan","modelID":"glm-5.3"}},
  "parts":[{"id":"prt_...","sessionID":"...","messageID":"...",
            "type":"text","text":"..."}]}]
```

Same `info` + `parts` envelope CodeWalk already parses.

### SSE event (`GET /event`)

```
data: {"id":"evt_...","type":"server.connected","properties":{}}
```

Identical `id`/`type`/`properties` envelope. Event-type union must be sampled
against a live session before relying on rare types; unknown types must stay
safe-ignored per existing reducer behavior.

### `/path`

```json
{"home":"C:\\Users\\10456","state":"C:\\Users\\10456\\.local\\state\\kilo",
 "config":"C:\\Users\\10456\\.config\\kilo","worktree":"/",
 "directory":"H:\\2026code\\..."}
```

Windows paths with backslashes; `worktree` observed as `"/"` on Windows —
path utils must not assume POSIX.

### `/vcs`

```json
{"branch":null,"default_branch":null}
```

Nullable branches (CodeWalk tolerant already).

### `/config` (excerpt)

```json
{"$schema":"https://app.kilo.ai/config.json","command":{},"skills":{"paths":[],"urls":[]},
 "snapshot":true,"plugin":[...],"remote_control":true,
 "model":"zhipuai-coding-plan/glm-5.3","small_model":"...","subagent_model":"..."}
```

`model` as `providerID/modelID` string matches existing selection sync.

## Auth

Basic Auth profile fields apply unchanged (`Authorization: Basic ...` header,
origin-scoped injection in `DioClient`). Confirm the Kilo server password
mechanism (env/config) on first LAN rollout; 401 semantics TBD in S1.4 of the
verification plan.

## Live round-trip verification (2026-10-03, server 7.6.x, probe session)

### prompt_async — VERIFIED

- Request shape: `parts` array + nested `model {providerID, modelID}` (CodeWalk's
  `ChatInputModel.toJson` already emits exactly this; `messageID` stays
  client-only per the established invariant).
- Response: **`204 No Content` with empty body** — CodeWalk's datasource
  accepts both 204 and 200, no change needed.
- Server-assigned IDs confirmed: assistant message `msg_...` created
  server-side; `time.completed` timestamp present for completion polling.

### SSE event census — VERIFIED

All events share the `{id, type, properties}` envelope. Observed during one
prompt round-trip (counts in parentheses):

`server.connected` (1), `server.heartbeat` (1), `session.updated` (4),
`session.status` (4), `session.turn.open` (1), `session.turn.close` (1),
`session.idle` (1), `session.diff` (2), `message.updated` (6),
`message.part.updated` (5), `message.part.delta` (1), **`sync` (15)**.

Notes:

- The `sync` event type is kilo-specific and high-volume; it multiplexes the
  `/sync` event bus into `/event` (payload: `syncEvent {id, type, seq,
  aggregateID}`). Reducers must keep safe-ignoring it.
- `session.turn.open/close`, `session.idle`, `message.part.delta` are additive
  beyond the upstream snapshot; existing tolerant handling applies.

### PTY — VERIFIED (HTTP surface)

- `GET /pty` → `[]` (200); `GET /pty/shells` → powershell/bash/cmd on Windows.
- `POST /pty {cwd, title, size{rows,cols}}` → 200 `{id, title, command, args,
  cwd, status:"running", pid}` — field-for-field match with
  `PtySessionModel.fromJson` (including `pid`).
- `DELETE /pty/{id}` → 200. Resize via `PUT /pty/{id} {size}` matches the
  datasource. The WebSocket stream (`GET /pty/{id}/connect`) still needs the
  in-app S4.1 smoke test.

### /tui remote control — READ-ONLY OK, WRITE NEEDS SUBSCRIBER

- `GET /tui/config` and `GET /tui/keybinds` return full payloads (200).
- `POST /tui/show-toast` and `POST /tui/select-session` both return 500
  `UnknownError`: the TUI front-end consumes commands via
  `GET /tui/control/next` polling and no subscriber was attached to this
  server instance at probe time. Do not build UI on the write surface until a
  TUI control subscriber is confirmed (kilo version / mode dependent).

### /sync — schema mapped, bus observed

- `POST /sync/start` (start workspace sync), `POST /sync/steal {sessionID}`
  (steal session into workspace), `POST /sync/history` / `POST /sync/replay`
  (event sourcing: `{id, aggregateID, seq, type, data}`).
- The sync bus is alive: `sync` events flow through `/event` (see census).
  `steal` semantics = move an actively-running session into the caller's
  workspace — candidate for the mobile "take over from TUI" action after
  live-state verification.
