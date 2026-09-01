import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeRelationship', () {
    test('model', () {
      final model = AttributeRelationship(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        onDelete: '',
        relatedCollection: '',
        relationType: '',
        xrequired: true,
        side: '',
        status: AttributeRelationshipStatus.available,
        twoWay: true,
        twoWayKey: '',
        type: '',
      );

      final map = model.toMap();
      final result = AttributeRelationship.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.onDelete, '');
      expect(result.relatedCollection, '');
      expect(result.relationType, '');
      expect(result.xrequired, true);
      expect(result.side, '');
      expect(result.status, AttributeRelationshipStatus.available);
      expect(result.twoWay, true);
      expect(result.twoWayKey, '');
      expect(result.type, '');
    });
  });
}
