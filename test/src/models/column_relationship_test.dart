import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColumnRelationship', () {
    test('model', () {
      final model = ColumnRelationship(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        onDelete: '',
        relatedTable: '',
        relationType: '',
        xrequired: true,
        side: '',
        status: ColumnRelationshipStatus.available,
        twoWay: true,
        twoWayKey: '',
        type: '',
      );

      final map = model.toMap();
      final result = ColumnRelationship.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$updatedAt, '');
      expect(result.error, '');
      expect(result.key, '');
      expect(result.onDelete, '');
      expect(result.relatedTable, '');
      expect(result.relationType, '');
      expect(result.xrequired, true);
      expect(result.side, '');
      expect(result.status, ColumnRelationshipStatus.available);
      expect(result.twoWay, true);
      expect(result.twoWayKey, '');
      expect(result.type, '');
    });
  });
}
