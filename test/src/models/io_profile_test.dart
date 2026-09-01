import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IoProfile', () {
    test('model', () {
      final model = IoProfile(
      );

      final map = model.toMap();
      final result = IoProfile.fromMap(map);

    });
  });
}
