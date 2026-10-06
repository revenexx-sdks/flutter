```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Forms forms = Forms(client);

Error result = await forms.formsSubmissionsList(
    id: '', // optional
    formId: '', // optional
    formSlug: 'contact', // optional
    source: '/contact', // optional
    status: enums.FormSubmissionStatus.xnew, // optional
    createdAt: '2026-01-31T09:15:00Z', // optional
    updatedAt: '2026-01-31T09:15:00Z', // optional
    limit: 50, // optional
    offset: 0, // optional
    order: 'created_at.desc', // optional
);
```
