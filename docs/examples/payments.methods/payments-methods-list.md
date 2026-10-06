```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PaymentsMethods paymentsMethods = PaymentsMethods(client);

 result = await paymentsMethods.paymentsMethodsList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    code: 'invoice', // optional
    kind: enums.PaymentMethodKind.selfManaged, // optional
    enabled: true, // optional
    provider: 'stripe', // optional
);
```
