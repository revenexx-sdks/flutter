import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PagePreviewGrantRequest', () {
    test('model', () {
      final model = PagePreviewGrantRequest(
      );

      final map = model.toMap();
      final result = PagePreviewGrantRequest.fromMap(map);

    });
  });
}
