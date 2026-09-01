import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketsPage', () {
    test('model', () {
      final model = MarketsPage();

      final map = model.toMap();
      final result = MarketsPage.fromMap(map);
    });
  });
}
