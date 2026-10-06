```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

 result = await pages.pagesTemplatesList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    id: '', // optional
    label: 'Hero with two teasers', // optional
    description: 'Full-width hero followed by a two-column teaser row.', // optional
    pageBundle: 'standard', // optional
    fieldName: 'content', // optional
    isDefault: true, // optional
    createdBy: '', // optional
    createdAt: '', // optional
    updatedAt: '', // optional
);
```
