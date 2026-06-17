```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Customers customers = Customers(client);

Organization result = await customers.customersOrganizationsCreate(
    name: '',
    settings: {}, // optional
    status: enums.OrganizationStatus.active, // optional
    vatId: '', // optional
);
```
