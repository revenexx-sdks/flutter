```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Forms forms = Forms(client);

Error result = await forms.formsSubmissionsUpdate(
    id: '',
    data: {
        "company": "Example GmbH",
        "email": "buyer@example.com",
        "message": "Please quote 200 units of ACME-4711-BLK, delivered to Hamburg."
    }, // optional
    formId: '', // optional
    formSlug: 'contact', // optional
    metadata: {}, // optional
    source: '/contact', // optional
    status: enums.FormSubmissionStatus.xnew, // optional
);
```
