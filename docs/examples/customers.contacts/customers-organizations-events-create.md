```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersContacts customersContacts = CustomersContacts(client);

Error result = await customersContacts.customersOrganizationsEventsCreate(
    organizationId: '',
    contactId: '',
    subject: 'Called about the annual requirement',
    actor: 'vertrieb@example.com', // optional
    kind: enums.ContactActivityKind.note, // optional
    note: 'Asked for a quote on the annual bolt requirement; call back in week 34.', // optional
    occurredAt: '2026-01-01T12:00:00Z', // optional
);
```
