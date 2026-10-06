import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageRevisionRef', () {
    test('model', () {
      final model = PageRevisionRef();

      final map = model.toMap();
      final result = PageRevisionRef.fromMap(map);
    });
  });
}
