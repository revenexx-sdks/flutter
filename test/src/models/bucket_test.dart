import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Bucket', () {
    test('model', () {
      final model = Bucket(
        $createdAt: '',
        $id: '',
        $permissions: [],
        $updatedAt: '',
        allowedFileExtensions: [],
        antivirus: true,
        compression: '',
        enabled: true,
        encryption: true,
        fileSecurity: true,
        maximumFileSize: ,
        name: '',
        totalSize: ,
        transformations: true,
      );

      final map = model.toMap();
      final result = Bucket.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$permissions, []);
                  expect(result.$updatedAt, '');
                  expect(result.allowedFileExtensions, []);
                  expect(result.antivirus, true);
                  expect(result.compression, '');
                  expect(result.enabled, true);
                  expect(result.encryption, true);
                  expect(result.fileSecurity, true);
                  expect(result.maximumFileSize, );
                  expect(result.name, '');
                  expect(result.totalSize, );
                  expect(result.transformations, true);
          });
  });
}
