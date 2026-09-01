```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersOrganizations customersOrganizations = CustomersOrganizations(client);

Error result = await customersOrganizations.customersAddressesUpdate(
    id: '',
    city: 'Berlin', // optional
    company: 'Beispiel Industrietechnik GmbH', // optional
    contactId: '', // optional
    country: 'DE', // optional
    isDefault: true, // optional
    name: 'Anna Berger', // optional
    organizationId: '', // optional
    phone: '+49 30 5550123', // optional
    region: 'Berlin', // optional
    street: 'Musterstraße 12', // optional
    street2: 'Gebäude C, 2. OG', // optional
    type: 'shipping', // optional
    zip: '10115', // optional
);
```
