import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TemplateFunction', () {
    test('model', () {
      final model = TemplateFunction(
        cron: '',
        events: [],
        icon: '',
        id: '',
        instructions: '',
        name: '',
        permissions: [],
        providerOwner: '',
        providerRepositoryId: '',
        providerVersion: '',
        runtimes: [],
        scopes: [],
        tagline: '',
        timeout: 0,
        useCases: [],
        variables: [],
        vcsProvider: '',
      );

      final map = model.toMap();
      final result = TemplateFunction.fromMap(map);

            expect(result.cron, '');
                  expect(result.events, []);
                  expect(result.icon, '');
                  expect(result.id, '');
                  expect(result.instructions, '');
                  expect(result.name, '');
                  expect(result.permissions, []);
                  expect(result.providerOwner, '');
                  expect(result.providerRepositoryId, '');
                  expect(result.providerVersion, '');
                  expect(result.runtimes, []);
                  expect(result.scopes, []);
                  expect(result.tagline, '');
                  expect(result.timeout, 0);
                  expect(result.useCases, []);
                  expect(result.variables, []);
                  expect(result.vcsProvider, '');
          });
  });
}
