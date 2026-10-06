```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersOrganizations customersOrganizations = CustomersOrganizations(client);

 result = await customersOrganizations.customersOrganizationsList(
    id: '', // optional
    name: 'Beispiel Industrietechnik GmbH', // optional
    vatId: 'DE123456789', // optional
    branche: 'Maschinenbau', // optional
    customerNumber: 'K-10042', // optional
    status: enums.CustomersOrganizationsListStatus.active, // optional
    lifecycleStage: 'customer', // optional
    paymentTerms: 'net_30', // optional
    creditLimit: 9.99, // optional
    priceList: 'standard', // optional
    deliveryBlock: true, // optional
    externalTeamId: '', // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
);
```
