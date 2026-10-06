import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TargetList', () {
    test('model', () {
      final model = TargetList(
        targets: [],
        total: 0,
      );

      final map = model.toMap();
      final result = TargetList.fromMap(map);

      expect(result.targets, []);
      expect(result.total, 0);
    });
  });
}
