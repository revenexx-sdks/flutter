import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageTemplateUpdateRequest', () {
    test('model', () {
      final model = PageTemplateUpdateRequest(
      );

      final map = model.toMap();
      final result = PageTemplateUpdateRequest.fromMap(map);

    });
  });
}
