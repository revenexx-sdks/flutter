import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Execution', () {
    test('model', () {
      final model = Execution(
        $createdAt: '',
        $id: '',
        $permissions: [],
        $updatedAt: '',
        deploymentId: '',
        duration: ,
        errors: '',
        functionId: '',
        logs: '',
        requestHeaders: [],
        requestMethod: '',
        requestPath: '',
        responseBody: '',
        responseHeaders: [],
        responseStatusCode: ,
        status: ExecutionStatus.waiting,
        trigger: ExecutionTrigger.http,
      );

      final map = model.toMap();
      final result = Execution.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$permissions, []);
                  expect(result.$updatedAt, '');
                  expect(result.deploymentId, '');
                  expect(result.duration, );
                  expect(result.errors, '');
                  expect(result.functionId, '');
                  expect(result.logs, '');
                  expect(result.requestHeaders, []);
                  expect(result.requestMethod, '');
                  expect(result.requestPath, '');
                  expect(result.responseBody, '');
                  expect(result.responseHeaders, []);
                  expect(result.responseStatusCode, );
                  expect(result.status, ExecutionStatus.waiting);
                  expect(result.trigger, ExecutionTrigger.http);
          });
  });
}
