import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssetsUpdateRequest', () {
    test('model', () {
      final model = AssetsUpdateRequest();

      final map = model.toMap();
      final result = AssetsUpdateRequest.fromMap(map);
    });
  });
}
