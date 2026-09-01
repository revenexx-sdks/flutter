```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersOrganizations customersOrganizations = CustomersOrganizations(client);

Error result = await customersOrganizations.customersOrganizationsCreate(
    name: 'Beispiel Industrietechnik GmbH',
    branche: 'Maschinenbau', // optional
    creditLimit: 5000, // optional
    customerNumber: 'K-10042', // optional
    deliveryBlock: true, // optional
    lifecycleStage: 'customer', // optional
    paymentTerms: 'net_30', // optional
    priceList: 'standard', // optional
    settings: {
        "account_manager": "sales-north",
        "delivery_tour": "tuesday",
        "self_pickup": true
    }, // optional
    status: enums.OrganizationStatus.active, // optional
    vatId: 'DE123456789', // optional
);
```
