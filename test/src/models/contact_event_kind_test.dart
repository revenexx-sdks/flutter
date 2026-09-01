import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactEventKind', () {
    test('model', () {
      final model = ContactEventKind(
      );

      final map = model.toMap();
      final result = ContactEventKind.fromMap(map);

    });
  });
}
