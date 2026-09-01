import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductLabelsRequest', () {
    test('model', () {
      final model = ProductLabelsRequest();

      final map = model.toMap();
      final result = ProductLabelsRequest.fromMap(map);
    });
  });
}
