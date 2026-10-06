```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersOrganizations customersOrganizations = CustomersOrganizations(client);

Error result = await customersOrganizations.customersAddressesCreate(
    city: 'Berlin',
    country: 'DE',
    street: 'Musterstraße 12',
    zip: '10115',
    company: 'Beispiel Industrietechnik GmbH', // optional
    contactId: '', // optional
    isDefault: true, // optional
    name: 'Anna Berger', // optional
    organizationId: '', // optional
    phone: '+49 30 5550123', // optional
    region: 'Berlin', // optional
    street2: 'Gebäude C, 2. OG', // optional
    type: 'shipping', // optional
);
```
