/// Revenexx Revenexx Flutter SDK
///
/// This SDK is compatible with Appwrite server version 1.0.x. 
/// For older versions, please check
/// [previous releases](https://github.com/revenexx-sdks/flutter/releases).
library revenexx;

import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:convert';

import 'src/enums.dart';
import 'src/service.dart';
import 'src/input_file.dart';
import 'models.dart' as models;
import 'enums.dart' as enums;
import 'src/upload_progress.dart';

export 'src/response.dart';
export 'src/client.dart';
export 'src/exception.dart';
export 'src/realtime.dart';
export 'src/upload_progress.dart';
export 'src/realtime_subscription.dart';
export 'src/realtime_message.dart';
export 'src/input_file.dart';

part 'query.dart';
part 'permission.dart';
part 'role.dart';
part 'id.dart';
part 'channel.dart';
part 'operator.dart';
part 'services/health.dart';
part 'services/apps.dart';
part 'services/avatars.dart';
part 'services/carts.dart';
part 'services/carts_io.dart';
part 'services/carts_items.dart';
part 'services/channels.dart';
part 'services/customers_value_lists.dart';
part 'services/customers_organizations.dart';
part 'services/customers.dart';
part 'services/customers_contacts.dart';
part 'services/customers_roles.dart';
part 'services/customers_segments.dart';
part 'services/events.dart';
part 'services/forms.dart';
part 'services/inventories_stock.dart';
part 'services/inventories_reservations.dart';
part 'services/inventories_locations.dart';
part 'services/io.dart';
part 'services/locale.dart';
part 'services/markets.dart';
part 'services/messaging.dart';
part 'services/orderlists.dart';
part 'services/orders.dart';
part 'services/pages_delivery.dart';
part 'services/pages_editor.dart';
part 'services/pages_collaboration.dart';
part 'services/pages.dart';
part 'services/payments_ledger.dart';
part 'services/payments_providers.dart';
part 'services/payments_methods.dart';
part 'services/prices.dart';
part 'services/products.dart';
part 'services/products_data_model.dart';
part 'services/products_assets.dart';
part 'services/products_categories.dart';
part 'services/products_references.dart';
part 'services/search.dart';
part 'services/settings.dart';
part 'services/shipping_carriers.dart';
part 'services/shipping_methods.dart';
part 'services/shipping_value_lists.dart';
part 'services/sites.dart';
part 'services/storage.dart';
