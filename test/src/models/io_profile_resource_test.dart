import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IoProfileResource', () {
    test('model', () {
      final model = IoProfileResource();

      final map = model.toMap();
      final result = IoProfileResource.fromMap(map);
    });
  });
}
