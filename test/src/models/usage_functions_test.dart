import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UsageFunctions', () {
    test('model', () {
      final model = UsageFunctions(
        builds: [],
        buildsFailed: [],
        buildsFailedTotal: ,
        buildsMbSeconds: [],
        buildsMbSecondsTotal: ,
        buildsStorage: [],
        buildsStorageTotal: ,
        buildsSuccess: [],
        buildsSuccessTotal: ,
        buildsTime: [],
        buildsTimeTotal: ,
        buildsTotal: ,
        deployments: [],
        deploymentsStorage: [],
        deploymentsStorageTotal: ,
        deploymentsTotal: ,
        executions: [],
        executionsMbSeconds: [],
        executionsMbSecondsTotal: ,
        executionsTime: [],
        executionsTimeTotal: ,
        executionsTotal: ,
        functions: [],
        functionsTotal: ,
        range: '',
      );

      final map = model.toMap();
      final result = UsageFunctions.fromMap(map);

            expect(result.builds, []);
                  expect(result.buildsFailed, []);
                  expect(result.buildsFailedTotal, );
                  expect(result.buildsMbSeconds, []);
                  expect(result.buildsMbSecondsTotal, );
                  expect(result.buildsStorage, []);
                  expect(result.buildsStorageTotal, );
                  expect(result.buildsSuccess, []);
                  expect(result.buildsSuccessTotal, );
                  expect(result.buildsTime, []);
                  expect(result.buildsTimeTotal, );
                  expect(result.buildsTotal, );
                  expect(result.deployments, []);
                  expect(result.deploymentsStorage, []);
                  expect(result.deploymentsStorageTotal, );
                  expect(result.deploymentsTotal, );
                  expect(result.executions, []);
                  expect(result.executionsMbSeconds, []);
                  expect(result.executionsMbSecondsTotal, );
                  expect(result.executionsTime, []);
                  expect(result.executionsTimeTotal, );
                  expect(result.executionsTotal, );
                  expect(result.functions, []);
                  expect(result.functionsTotal, );
                  expect(result.range, '');
          });
  });
}
