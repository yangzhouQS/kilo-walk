/// Kind of OpenCode-family server a [ServerProfile] connects to.
///
/// ADR-049: the Kilo CLI/TUI embedded server speaks an OpenCode-family
/// superset contract (see `ai-docs/kilo_server.md`). The kind is advisory
/// metadata today — used for diagnostics copy and follow-up capability
/// gating — while both kinds share the same wire protocol.
enum ServerKind {
  opencode,
  kilo;

  /// Tolerant parse: missing or unrecognized values fall back to
  /// [opencode] so legacy persisted profiles keep working (ADR-049).
  static ServerKind fromName(String? value) {
    switch (value) {
      case 'kilo':
        return ServerKind.kilo;
      default:
        return ServerKind.opencode;
    }
  }

  String get name => switch (this) {
        ServerKind.opencode => 'opencode',
        ServerKind.kilo => 'kilo',
      };
}
