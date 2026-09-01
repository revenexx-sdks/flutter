import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCloneCopied', () {
    test('model', () {
      final model = MarketCloneCopied(
      );

      final map = model.toMap();
      final result = MarketCloneCopied.fromMap(map);

    });
  });
}
