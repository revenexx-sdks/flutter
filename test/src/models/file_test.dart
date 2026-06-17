import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('File', () {
    test('model', () {
      final model = File(
        $createdAt: '',
        $id: '',
        $permissions: [],
        $updatedAt: '',
        bucketId: '',
        chunksTotal: ,
        chunksUploaded: ,
        compression: '',
        encryption: true,
        mimeType: '',
        name: '',
        signature: '',
        sizeOriginal: ,
      );

      final map = model.toMap();
      final result = File.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$permissions, []);
                  expect(result.$updatedAt, '');
                  expect(result.bucketId, '');
                  expect(result.chunksTotal, );
                  expect(result.chunksUploaded, );
                  expect(result.compression, '');
                  expect(result.encryption, true);
                  expect(result.mimeType, '');
                  expect(result.name, '');
                  expect(result.signature, '');
                  expect(result.sizeOriginal, );
          });
  });
}
