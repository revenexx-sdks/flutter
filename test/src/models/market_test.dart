import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Market', () {
    test('model', () {
      final model = Market();

      final map = model.toMap();
      final result = Market.fromMap(map);
    });
  });
}
