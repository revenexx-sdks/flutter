```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsAssets productsAssets = ProductsAssets(client);

Error result = await productsAssets.productsAssetsCreate(
    assetFamilyId: '',
    code: 'acme-4711-blk_packshot_1',
    attributeValues: {
        "common": {
            "copyright": "\u00a9 Acme Tools",
            "expires_on": "2028-12-31"
        },
        "locale_specific": {
            "de_DE": {
                "alt_text": "Akku-Bohrschrauber, freigestellt"
            }
        }
    }, // optional
    deliveryPath: 'packshots/acme-4711-blk_1.jpg', // optional
    externalUrl: 'https://cdn.example.com/packshots/acme-4711-blk_1.jpg', // optional
    source: enums.AssetsSource.storage, // optional
    storageAssetId: 'ast_01J8ZQ0000000000000000', // optional
);
```
