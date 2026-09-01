import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentWebhookIngestRequest', () {
    test('model', () {
      final model = PaymentWebhookIngestRequest();

      final map = model.toMap();
      final result = PaymentWebhookIngestRequest.fromMap(map);
    });
  });
}
