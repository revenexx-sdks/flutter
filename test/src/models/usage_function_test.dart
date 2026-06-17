import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UsageFunction', () {
    test('model', () {
      final model = UsageFunction(
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
        buildsTimeAverage: ,
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
        range: '',
      );

      final map = model.toMap();
      final result = UsageFunction.fromMap(map);

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
                  expect(result.buildsTimeAverage, );
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
                  expect(result.range, '');
          });
  });
}
