import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageTranslateRequest', () {
    test('model', () {
      final model = PageTranslateRequest();

      final map = model.toMap();
      final result = PageTranslateRequest.fromMap(map);
    });
  });
}
