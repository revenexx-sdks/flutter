```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Customers customers = Customers(client);

Address result = await customers.customersAddressesUpdate(
    id: '',
    city: '', // optional
    company: '', // optional
    contactId: '', // optional
    country: '', // optional
    isDefault: false, // optional
    name: '', // optional
    organizationId: '', // optional
    phone: '', // optional
    region: '', // optional
    street: '', // optional
    street2: '', // optional
    type: enums.AddressType.billing, // optional
    zip: '', // optional
);
```
