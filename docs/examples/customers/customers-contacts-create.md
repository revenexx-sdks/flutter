```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Customers customers = Customers(client);

Contact result = await customers.customersContactsCreate(
    email: '',
    firstName: '', // optional
    isPrimary: false, // optional
    lastName: '', // optional
    locale: '', // optional
    organizationId: '', // optional
    phone: '', // optional
    role: enums.ContactRole.buyer, // optional
    status: enums.ContactStatus.invited, // optional
);
```
