```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsCategories productsCategories = ProductsCategories(client);

 result = await productsCategories.productsCategoriesList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    id: '', // optional
    code: 'cordless_drills', // optional
    parentId: '', // optional
    path: 'tools/power_tools/cordless_drills', // optional
    position: 1, // optional
    labels: '{}', // optional
    values: '{}', // optional
    rules: '{}', // optional
    ruleMatch: enums.RuleMatch.all, // optional
    rulesComputedAt: '2026-01-01T12:00:00Z', // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
);
```
