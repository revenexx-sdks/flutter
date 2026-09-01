import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Segment', () {
    test('model', () {
      final model = Segment();

      final map = model.toMap();
      final result = Segment.fromMap(map);
    });
  });
}
