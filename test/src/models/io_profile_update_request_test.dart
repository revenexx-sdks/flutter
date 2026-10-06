import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IoProfileUpdateRequest', () {
    test('model', () {
      final model = IoProfileUpdateRequest();

      final map = model.toMap();
      final result = IoProfileUpdateRequest.fromMap(map);
    });
  });
}
