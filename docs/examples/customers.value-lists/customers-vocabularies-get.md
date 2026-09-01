```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersValueLists customersValueLists = CustomersValueLists(client);

Error result = await customersValueLists.customersVocabulariesGet(
    name: enums.CustomersVocabulariesGetName.addressTypes,
);
```
