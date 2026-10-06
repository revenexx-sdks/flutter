```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingCarriers shippingCarriers = ShippingCarriers(client);

Error result = await shippingCarriers.shippingCarriersUpdate(
    id: '',
    code: 'acme-parcel', // optional
    countries: ["DE","AT","CH"], // optional
    cutoffTime: '16:00', // optional
    etaDaysMax: 1, // optional
    etaDaysMin: 1, // optional
    handlingDays: 1, // optional
    labels: {
        "de": "Acme Paketdienst",
        "en": "Acme Parcel"
    }, // optional
    metadata: {
        "contract": "ACME-2026",
        "customer_number": "4711"
    }, // optional
    name: 'Acme Parcel', // optional
    position: 1, // optional
    serviceLevel: 'express', // optional
    status: enums.ShippingCarrierStatus.active, // optional
    trackingUrlTemplate: 'https://track.example.com/parcels/{tracking_code}', // optional
);
```
