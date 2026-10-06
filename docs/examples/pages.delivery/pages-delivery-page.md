```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PagesDelivery pagesDelivery = PagesDelivery(client);

Error result = await pagesDelivery.pagesDeliveryPage(
    slug: 'about-us', // optional
    id: '', // optional
    langcode: 'de', // optional
);
```
