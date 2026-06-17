import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderAcknowledgeRequest', () {
    test('model', () {
      final model = OrderAcknowledgeRequest(
      );

      final map = model.toMap();
      final result = OrderAcknowledgeRequest.fromMap(map);

    });
  });
}
