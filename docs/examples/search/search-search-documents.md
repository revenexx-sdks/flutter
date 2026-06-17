```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Search search = Search(client);

 result = await search.searchSearchDocuments(
    collection: enums.Collection.greetings,
    facetBy: '', // optional
    filterBy: '', // optional
    page: 0, // optional
    perPage: 0, // optional
    q: '', // optional
    queryBy: '', // optional
    sortBy: '', // optional
);
```
