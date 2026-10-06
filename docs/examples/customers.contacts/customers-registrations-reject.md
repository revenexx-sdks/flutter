```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersContacts customersContacts = CustomersContacts(client);

Error result = await customersContacts.customersRegistrationsReject(
    contactId: '',
    reason: 'Could not be verified as a commercial buyer.',
    decidedBy: 'vertrieb@example.com', // optional
);
```
