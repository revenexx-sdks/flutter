```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersSegments customersSegments = CustomersSegments(client);

 result = await customersSegments.customersSegmentMembersList(
    id: '', // optional
    segmentId: '', // optional
    organizationId: '', // optional
    source: enums.Source.manual, // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
);
```
