import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketCloneRequest', () {
    test('model', () {
      final model = MarketCloneRequest(
        code: '',
      );

      final map = model.toMap();
      final result = MarketCloneRequest.fromMap(map);

      expect(result.code, '');
    });
  });
}
