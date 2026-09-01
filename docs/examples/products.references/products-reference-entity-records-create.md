```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsReferences productsReferences = ProductsReferences(client);

Error result = await productsReferences.productsReferenceEntityRecordsCreate(
    code: 'acme_tools',
    referenceEntityId: '',
    attributeValues: {
        "common": {
            "country": "DE",
            "founded": 1946
        },
        "locale_specific": {
            "de_DE": {
                "description": "Werkzeughersteller aus S\u00fcddeutschland."
            }
        }
    }, // optional
    labels: {
        "de": "Acme Tools",
        "en": "Acme Tools"
    }, // optional
);
```
