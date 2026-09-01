```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PaymentsLedger paymentsLedger = PaymentsLedger(client);

 result = await paymentsLedger.paymentsList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    cartId: '', // optional
    contactId: '', // optional
    status: enums.PaymentStatus.created, // optional
    orderRef: 'ORD-10042', // optional
    methodCode: 'invoice', // optional
    kind: enums.PaymentMethodKind.selfManaged, // optional
    provider: 'stripe', // optional
    dunningStage: enums.PaymentDunningStage.none, // optional
    idempotencyKey: 'checkout-2f9c41', // optional
);
```
