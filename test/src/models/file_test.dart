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
        chunksTotal: 0,
        chunksUploaded: 0,
        compression: '',
        encryption: true,
        mimeType: '',
        name: '',
        signature: '',
        sizeOriginal: 0,
      );

      final map = model.toMap();
      final result = File.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$permissions, []);
      expect(result.$updatedAt, '');
      expect(result.bucketId, '');
      expect(result.chunksTotal, 0);
      expect(result.chunksUploaded, 0);
      expect(result.compression, '');
      expect(result.encryption, true);
      expect(result.mimeType, '');
      expect(result.name, '');
      expect(result.signature, '');
      expect(result.sizeOriginal, 0);
    });
  });
}
