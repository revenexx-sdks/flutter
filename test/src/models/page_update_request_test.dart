import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageUpdateRequest', () {
    test('model', () {
      final model = PageUpdateRequest(
      );

      final map = model.toMap();
      final result = PageUpdateRequest.fromMap(map);

    });
  });
}
