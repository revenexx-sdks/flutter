```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Payments payments = Payments(client);

PaymentMethod result = await payments.paymentsMethodsUpdate(
    id: '',
    code: '', // optional
    countries: [], // optional
    description: '', // optional
    enabled: false, // optional
    feeAmount: 0, // optional
    feeCurrency: '', // optional
    feeType: enums.PaymentFeeType.none, // optional
    kind: enums.PaymentMethodKind.selfManaged, // optional
    labels: {}, // optional
    maxOrderValue: 0, // optional
    metadata: {}, // optional
    minOrderValue: 0, // optional
    name: '', // optional
    position: 0, // optional
    provider: '', // optional
    providerMethod: '', // optional
);
```
