import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketList', () {
    test('model', () {
      final model = MarketList(
      );

      final map = model.toMap();
      final result = MarketList.fromMap(map);

    });
  });
}
