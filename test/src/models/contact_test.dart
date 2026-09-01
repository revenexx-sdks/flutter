import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Contact', () {
    test('model', () {
      final model = Contact(
      );

      final map = model.toMap();
      final result = Contact.fromMap(map);

    });
  });
}
