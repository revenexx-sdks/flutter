import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DeploymentList', () {
    test('model', () {
      final model = DeploymentList(
        deployments: [],
        total: ,
      );

      final map = model.toMap();
      final result = DeploymentList.fromMap(map);

            expect(result.deployments, []);
                  expect(result.total, );
          });
  });
}
