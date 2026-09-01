```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Search search = Search(client);

Error result = await search.searchSearchDocumentsGet(
    collection: enums.Collection.products,
    q: '', // optional
    queryBy: '', // optional
    filterBy: '', // optional
    sortBy: '', // optional
    facetBy: '', // optional
    maxFacetValues: 1, // optional
    groupBy: '', // optional
    includeFields: '', // optional
    excludeFields: '', // optional
    highlightFullFields: '', // optional
    numTypos: 1, // optional
    prefix: '', // optional
    page: 1, // optional
    perPage: 1, // optional
);
```
