import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PagePublishRequest', () {
    test('model', () {
      final model = PagePublishRequest();

      final map = model.toMap();
      final result = PagePublishRequest.fromMap(map);
    });
  });
}
