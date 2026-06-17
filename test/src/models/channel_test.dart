import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Channel', () {
    test('model', () {
      final model = Channel(
      );

      final map = model.toMap();
      final result = Channel.fromMap(map);

    });
  });
}
