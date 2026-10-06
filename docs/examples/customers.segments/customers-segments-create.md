```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersSegments customersSegments = CustomersSegments(client);

Error result = await customersSegments.customersSegmentsCreate(
    code: 'key_accounts',
    labels: {
        "de": "Gro\u00dfkunden",
        "en": "Key accounts"
    }, // optional
    position: 1, // optional
    ruleMatch: enums.SegmentRuleMatch.all, // optional
    rules: {}, // optional
);
```
