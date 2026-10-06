```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PaymentsLedger paymentsLedger = PaymentsLedger(client);

Error result = await paymentsLedger.paymentsCreate(
    amount: 49.9,
    methodCode: 'invoice',
    cartId: '', // optional
    contactId: '', // optional
    country: 'DE', // optional
    currency: 'EUR', // optional
    idempotencyKey: 'checkout-2f9c41', // optional
    metadata: {
        "order_source": "web"
    }, // optional
    orderRef: 'ORD-10042', // optional
    returnUrl: 'https://shop.example.com/checkout/return', // optional
);
```
