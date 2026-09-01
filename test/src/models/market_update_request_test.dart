import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketUpdateRequest', () {
    test('model', () {
      final model = MarketUpdateRequest();

      final map = model.toMap();
      final result = MarketUpdateRequest.fromMap(map);
    });
  });
}
