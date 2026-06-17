/// RevenexxAPIRevenexx Revenexx Flutter SDK
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
part 'services/apps.dart';
part 'services/avatars.dart';
part 'services/carts.dart';
part 'services/channels.dart';
part 'services/customers.dart';
part 'services/greetings.dart';
part 'services/inventories.dart';
part 'services/locale.dart';
part 'services/markets.dart';
part 'services/messaging.dart';
part 'services/orders.dart';
part 'services/pages.dart';
part 'services/payments.dart';
part 'services/prices.dart';
part 'services/products.dart';
part 'services/search.dart';
part 'services/shipping.dart';
part 'services/sites.dart';
part 'services/storage.dart';
part 'services/tokens.dart';
