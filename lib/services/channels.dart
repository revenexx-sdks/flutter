part of '../revenexx.dart';

class Channels extends Service {
  /// Initializes a [Channels] service
  Channels(super.client);

  Future channelsList() async {
    const String apiPath = '/v1/channels';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Channel> channelsCreate({required String code, required String name, bool? isDefault, Map? labels, int? position, enums.ChannelStatus? status, enums.ChannelType? type}) async {
    const String apiPath = '/v1/channels';

        final Map<String, dynamic> apiParams = {
            'code': code,

            if (isDefault != null) 'is_default': isDefault,

            'labels': labels,

            'name': name,

            if (position != null) 'position': position,

            if (status != null) 'status': status.value,

            if (type != null) 'type': type.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Channel.fromMap(res.data);

  }

  Future<models.ChannelDefaults> channelsDefaults() async {
    const String apiPath = '/v1/channels/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ChannelDefaults.fromMap(res.data);

  }

  Future channelsDelete({required String id}) async {
    final String apiPath = '/v1/channels/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Channel> channelsGet({required String id}) async {
    final String apiPath = '/v1/channels/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Channel.fromMap(res.data);

  }

  Future<models.Channel> channelsUpdate({required String id, String? code, bool? isDefault, Map? labels, String? name, int? position, enums.ChannelStatus? status, enums.ChannelType? type}) async {
    final String apiPath = '/v1/channels/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            if (isDefault != null) 'is_default': isDefault,

            'labels': labels,

            if (name != null) 'name': name,

            if (position != null) 'position': position,

            if (status != null) 'status': status.value,

            if (type != null) 'type': type.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Channel.fromMap(res.data);

  }
}