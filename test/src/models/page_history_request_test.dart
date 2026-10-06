import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageHistoryRequest', () {
    test('model', () {
      final model = PageHistoryRequest(
        index: 0,
      );

      final map = model.toMap();
      final result = PageHistoryRequest.fromMap(map);

      expect(result.index, 0);
    });
  });
}
