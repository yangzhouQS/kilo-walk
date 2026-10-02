import 'package:codewalk/data/models/chat_session_model.dart';
import 'package:codewalk/domain/entities/server_kind.dart';
import 'package:codewalk/domain/entities/server_profile.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ServerProfile serverKind (ADR-049)', () {
    test('SK-1 legacy persisted JSON without serverKind falls back to opencode',
        () {
      final profile = ServerProfile.fromJson(const <String, dynamic>{
        'id': 's1',
        'url': 'http://127.0.0.1:4096',
        'createdAt': 1,
        'updatedAt': 2,
      });
      expect(profile.serverKind, ServerKind.opencode);
      expect(profile.isKilo, isFalse);
    });

    test('SK-2 kilo kind round-trips through JSON', () {
      final profile = ServerProfile.fromJson(const <String, dynamic>{
        'id': 's2',
        'url': 'http://192.168.1.10:4096',
        'serverKind': 'kilo',
      });
      expect(profile.serverKind, ServerKind.kilo);
      expect(profile.isKilo, isTrue);
      final restored = ServerProfile.fromJson(profile.toJson());
      expect(restored.serverKind, ServerKind.kilo);
    });

    test('SK-3 unrecognized serverKind value falls back to opencode', () {
      final profile = ServerProfile.fromJson(const <String, dynamic>{
        'id': 's3',
        'url': 'http://127.0.0.1:4096',
        'serverKind': 'bogus',
      });
      expect(profile.serverKind, ServerKind.opencode);
    });

    test('SK-4 copyWith updates kind without touching other fields', () {
      const base = ServerProfile(
        id: 's4',
        url: 'http://127.0.0.1:4096',
        createdAt: 1,
        updatedAt: 1,
      );
      final kilo = base.copyWith(serverKind: ServerKind.kilo);
      expect(kilo.serverKind, ServerKind.kilo);
      expect(kilo.url, base.url);
      expect(kilo.id, base.id);
      expect(base.serverKind, ServerKind.opencode);
    });

    test('SK-5 kind participates in equality props', () {
      const a = ServerProfile(id: 's5', url: 'u', createdAt: 1, updatedAt: 1);
      const b = ServerProfile(
        id: 's5',
        url: 'u',
        serverKind: ServerKind.kilo,
        createdAt: 1,
        updatedAt: 1,
      );
      expect(a, isNot(b));
    });
  });

  group('Kilo session payload tolerance (ai-docs/kilo_server.md)', () {
    test('CT-1 parses kilo session list entries', () {
      final sessions = <Map<String, dynamic>>[
        <String, dynamic>{
          'id': 'ses_f2726690cffeQSUtCb9LtfpFLw',
          'slug': 'eager-harbor',
          'projectID': 'global',
          'directory': r'C:\Users\demo',
          'path': 'Users/demo',
          'summary': <String, dynamic>{
            'additions': 0,
            'deletions': 0,
            'files': 0,
          },
          'tokens': <String, dynamic>{
            'input': 31526,
            'output': 211,
            'reasoning': 411,
            'cache': <String, dynamic>{'read': 896, 'write': 0},
          },
          'title': 'process-risk-analysis',
          'agent': 'code',
          'model': <String, dynamic>{
            'id': 'glm-5.3',
            'providerID': 'zhipuai-coding-plan',
            'variant': 'default',
          },
          'version': '7.6.2',
          'time': <String, dynamic>{
            'created': 1790344533747,
            'updated': 1790344575663,
          },
          'permission': <dynamic>[
            <String, dynamic>{
              'permission': 'question',
              'pattern': '*',
              'action': 'deny',
            },
          ],
        },
      ];
      final parsed =
          sessions.map(ChatSessionModel.fromJson).toList(growable: false);
      expect(parsed, hasLength(1));
      expect(parsed.first.id, 'ses_f2726690cffeQSUtCb9LtfpFLw');
      expect(parsed.first.title, 'process-risk-analysis');
      expect(parsed.first.directory, r'C:\Users\demo');
    });

    test('CT-1b parses singular parentID with child link', () {
      final model = ChatSessionModel.fromJson(<String, dynamic>{
        'id': 'ses_child',
        'title': 'child session',
        'parentID': 'ses_parent',
        'time': <String, dynamic>{'created': 1, 'updated': 2},
      });
      expect(model.parentId, 'ses_parent');
    });

    test('CT-1c string path field is ignored safely', () {
      final model = ChatSessionModel.fromJson(<String, dynamic>{
        'id': 'ses_x',
        'title': 't',
        'path': 'Users/demo',
        'time': <String, dynamic>{'created': 1},
      });
      expect(model.id, 'ses_x');
    });
  });
}
