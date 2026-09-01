import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntriesLadderResponse', () {
    test('model', () {
      final model = PriceEntriesLadderResponse(
      );

      final map = model.toMap();
      final result = PriceEntriesLadderResponse.fromMap(map);

    });
  });
}
