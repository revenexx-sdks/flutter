import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UsageFunction', () {
    test('model', () {
      final model = UsageFunction(
        builds: [],
        buildsFailed: [],
        buildsFailedTotal: 0,
        buildsMbSeconds: [],
        buildsMbSecondsTotal: 0,
        buildsStorage: [],
        buildsStorageTotal: 0,
        buildsSuccess: [],
        buildsSuccessTotal: 0,
        buildsTime: [],
        buildsTimeAverage: 0,
        buildsTimeTotal: 0,
        buildsTotal: 0,
        deployments: [],
        deploymentsStorage: [],
        deploymentsStorageTotal: 0,
        deploymentsTotal: 0,
        executions: [],
        executionsMbSeconds: [],
        executionsMbSecondsTotal: 0,
        executionsTime: [],
        executionsTimeTotal: 0,
        executionsTotal: 0,
        range: '',
      );

      final map = model.toMap();
      final result = UsageFunction.fromMap(map);

            expect(result.builds, []);
                  expect(result.buildsFailed, []);
                  expect(result.buildsFailedTotal, 0);
                  expect(result.buildsMbSeconds, []);
                  expect(result.buildsMbSecondsTotal, 0);
                  expect(result.buildsStorage, []);
                  expect(result.buildsStorageTotal, 0);
                  expect(result.buildsSuccess, []);
                  expect(result.buildsSuccessTotal, 0);
                  expect(result.buildsTime, []);
                  expect(result.buildsTimeAverage, 0);
                  expect(result.buildsTimeTotal, 0);
                  expect(result.buildsTotal, 0);
                  expect(result.deployments, []);
                  expect(result.deploymentsStorage, []);
                  expect(result.deploymentsStorageTotal, 0);
                  expect(result.deploymentsTotal, 0);
                  expect(result.executions, []);
                  expect(result.executionsMbSeconds, []);
                  expect(result.executionsMbSecondsTotal, 0);
                  expect(result.executionsTime, []);
                  expect(result.executionsTimeTotal, 0);
                  expect(result.executionsTotal, 0);
                  expect(result.range, '');
          });
  });
}
