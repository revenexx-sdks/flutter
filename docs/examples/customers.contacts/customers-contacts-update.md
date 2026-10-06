```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersContacts customersContacts = CustomersContacts(client);

Error result = await customersContacts.customersContactsUpdate(
    id: '',
    email: 'einkauf@example.com', // optional
    firstName: 'Anna', // optional
    isPrimary: true, // optional
    jobTitle: 'Einkaufsleitung', // optional
    lastName: 'Berger', // optional
    locale: 'de-DE', // optional
    orderApprovalLimit: 25000, // optional
    organizationId: '', // optional
    phone: '+49 30 5550123', // optional
    registrationStatus: enums.CustomersContactsCreateRegistrationStatus.pending, // optional
    role: 'buyer', // optional
    status: enums.ContactStatus.invited, // optional
);
```
