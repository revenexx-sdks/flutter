import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntriesBulkResponse', () {
    test('model', () {
      final model = PriceEntriesBulkResponse();

      final map = model.toMap();
      final result = PriceEntriesBulkResponse.fromMap(map);
    });
  });
}
