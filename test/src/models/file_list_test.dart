import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FileList', () {
    test('model', () {
      final model = FileList(
        files: [],
        total: 0,
      );

      final map = model.toMap();
      final result = FileList.fromMap(map);

      expect(result.files, []);
      expect(result.total, 0);
    });
  });
}
