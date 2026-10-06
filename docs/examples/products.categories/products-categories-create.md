```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsCategories productsCategories = ProductsCategories(client);

Error result = await productsCategories.productsCategoriesCreate(
    code: 'cordless_drills',
    labels: {
        "de": "Akku-Bohrschrauber",
        "en": "Cordless drills"
    }, // optional
    parentId: '', // optional
    path: 'tools/power_tools/cordless_drills', // optional
    position: 1, // optional
    ruleMatch: enums.CategoriesRuleMatch.all, // optional
    rules: {
        "conditions": [
            {
                "field": "attribute:brand",
                "operator": "in",
                "value": [
                    "acme",
                    "globex"
                ]
            },
            {
                "field": "enabled",
                "operator": "eq",
                "value": true
            }
        ]
    }, // optional
    rulesComputedAt: '2026-01-01T12:00:00Z', // optional
    values: {
        "hero_asset": "packshots\/cordless_drills_hero",
        "seo_title": "Cordless drills"
    }, // optional
);
```
