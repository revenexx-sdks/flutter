import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntriesReplaceResponse', () {
    test('model', () {
      final model = PriceEntriesReplaceResponse(
      );

      final map = model.toMap();
      final result = PriceEntriesReplaceResponse.fromMap(map);

    });
  });
}
