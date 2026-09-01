import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceResolveBasis', () {
    test('model', () {
      final model = PriceResolveBasis();

      final map = model.toMap();
      final result = PriceResolveBasis.fromMap(map);
    });
  });
}
