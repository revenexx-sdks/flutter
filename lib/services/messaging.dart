part of '../revenexx.dart';

  /// Outbound messaging: email/push messages, providers, topics, targets.
class Messaging extends Service {
  /// Initializes a [Messaging] service
  Messaging(super.client);

  /// Get a list of all messages from the current Revenexx project.
  Future<models.MessageList> messagingListMessages({List<String>? queries, String? search, bool? total}) async {
    const String apiPath = '/v1/messaging/messages';

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (search != null) 'search': search,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.MessageList.fromMap(res.data);

  }

  /// Create a new email message.
  Future<models.Message> messagingCreateEmail({required String content, required String messageId, required String subject, List<String>? attachments, List<String>? bcc, List<String>? cc, bool? draft, bool? html, String? scheduledAt, List<String>? targets, List<String>? topics, List<String>? users}) async {
    const String apiPath = '/v1/messaging/messages/email';

        final Map<String, dynamic> apiParams = {
            if (attachments != null) 'attachments': attachments,

            if (bcc != null) 'bcc': bcc,

            if (cc != null) 'cc': cc,

            'content': content,

            if (draft != null) 'draft': draft,

            if (html != null) 'html': html,

            'messageId': messageId,

            if (scheduledAt != null) 'scheduledAt': scheduledAt,

            'subject': subject,

            if (targets != null) 'targets': targets,

            if (topics != null) 'topics': topics,

            if (users != null) 'users': users,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

  }

  /// Update an email message by its unique ID. This endpoint only works on
  /// messages that are in draft status. Messages that are already processing,
  /// sent, or failed cannot be updated.
  /// 
  Future<models.Message> messagingUpdateEmail({required String messageId, List<String>? attachments, List<String>? bcc, List<String>? cc, String? content, bool? draft, bool? html, String? scheduledAt, String? subject, List<String>? targets, List<String>? topics, List<String>? users}) async {
    final String apiPath = '/v1/messaging/messages/email/{messageId}'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            if (attachments != null) 'attachments': attachments,

            if (bcc != null) 'bcc': bcc,

            if (cc != null) 'cc': cc,

            if (content != null) 'content': content,

            if (draft != null) 'draft': draft,

            if (html != null) 'html': html,

            if (scheduledAt != null) 'scheduledAt': scheduledAt,

            if (subject != null) 'subject': subject,

            if (targets != null) 'targets': targets,

            if (topics != null) 'topics': topics,

            if (users != null) 'users': users,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

  }

  /// Create a new push notification.
  Future<models.Message> messagingCreatePush({required String messageId, String? action, int? badge, String? body, String? color, bool? contentAvailable, bool? critical, Map? data, bool? draft, String? icon, String? image, enums.Priority? priority, String? scheduledAt, String? sound, String? tag, List<String>? targets, String? title, List<String>? topics, List<String>? users}) async {
    const String apiPath = '/v1/messaging/messages/push';

        final Map<String, dynamic> apiParams = {
            if (action != null) 'action': action,

            if (badge != null) 'badge': badge,

            if (body != null) 'body': body,

            if (color != null) 'color': color,

            if (contentAvailable != null) 'contentAvailable': contentAvailable,

            if (critical != null) 'critical': critical,

            if (data != null) 'data': data,

            if (draft != null) 'draft': draft,

            if (icon != null) 'icon': icon,

            if (image != null) 'image': image,

            'messageId': messageId,

            if (priority != null) 'priority': priority.value,

            if (scheduledAt != null) 'scheduledAt': scheduledAt,

            if (sound != null) 'sound': sound,

            if (tag != null) 'tag': tag,

            if (targets != null) 'targets': targets,

            if (title != null) 'title': title,

            if (topics != null) 'topics': topics,

            if (users != null) 'users': users,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

  }

  /// Update a push notification by its unique ID. This endpoint only works on
  /// messages that are in draft status. Messages that are already processing,
  /// sent, or failed cannot be updated.
  /// 
  Future<models.Message> messagingUpdatePush({required String messageId, String? action, int? badge, String? body, String? color, bool? contentAvailable, bool? critical, Map? data, bool? draft, String? icon, String? image, enums.Priority? priority, String? scheduledAt, String? sound, String? tag, List<String>? targets, String? title, List<String>? topics, List<String>? users}) async {
    final String apiPath = '/v1/messaging/messages/push/{messageId}'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            if (action != null) 'action': action,

            if (badge != null) 'badge': badge,

            if (body != null) 'body': body,

            if (color != null) 'color': color,

            if (contentAvailable != null) 'contentAvailable': contentAvailable,

            if (critical != null) 'critical': critical,

            if (data != null) 'data': data,

            if (draft != null) 'draft': draft,

            if (icon != null) 'icon': icon,

            if (image != null) 'image': image,

            if (priority != null) 'priority': priority.value,

            if (scheduledAt != null) 'scheduledAt': scheduledAt,

            if (sound != null) 'sound': sound,

            if (tag != null) 'tag': tag,

            if (targets != null) 'targets': targets,

            if (title != null) 'title': title,

            if (topics != null) 'topics': topics,

            if (users != null) 'users': users,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

  }

  /// Delete a message. If the message is not a draft or scheduled, but has been
  /// sent, this will not recall the message.
  Future messagingDelete({required String messageId}) async {
    final String apiPath = '/v1/messaging/messages/{messageId}'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a message by its unique ID.
  /// 
  Future<models.Message> messagingGetMessage({required String messageId}) async {
    final String apiPath = '/v1/messaging/messages/{messageId}'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Message.fromMap(res.data);

  }

  /// Get the message activity logs listed by its unique ID.
  Future<models.LogList> messagingListMessageLogs({required String messageId, List<String>? queries, bool? total}) async {
    final String apiPath = '/v1/messaging/messages/{messageId}/logs'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LogList.fromMap(res.data);

  }

  /// Get a list of the targets associated with a message.
  Future<models.TargetList> messagingListTargets({required String messageId, List<String>? queries, bool? total}) async {
    final String apiPath = '/v1/messaging/messages/{messageId}/targets'.replaceAll('{messageId}', messageId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.TargetList.fromMap(res.data);

  }

  /// Get a list of all providers from the current Revenexx project.
  Future<models.ProviderList> messagingListProviders({List<String>? queries, String? search, bool? total}) async {
    const String apiPath = '/v1/messaging/providers';

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (search != null) 'search': search,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.ProviderList.fromMap(res.data);

  }

  /// Create a new Mailgun provider.
  Future<models.Provider> messagingCreateMailgunProvider({required String name, required String providerId, String? apiKey, String? domain, bool? enabled, String? fromEmail, String? fromName, bool? isEuRegion, String? replyToEmail, String? replyToName}) async {
    const String apiPath = '/v1/messaging/providers/mailgun';

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (domain != null) 'domain': domain,

            if (enabled != null) 'enabled': enabled,

            if (fromEmail != null) 'fromEmail': fromEmail,

            if (fromName != null) 'fromName': fromName,

            if (isEuRegion != null) 'isEuRegion': isEuRegion,

            'name': name,

            'providerId': providerId,

            if (replyToEmail != null) 'replyToEmail': replyToEmail,

            if (replyToName != null) 'replyToName': replyToName,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Update a Mailgun provider by its unique ID.
  Future<models.Provider> messagingUpdateMailgunProvider({required String providerId, String? apiKey, String? domain, bool? enabled, String? fromEmail, String? fromName, bool? isEuRegion, String? name, String? replyToEmail, String? replyToName}) async {
    final String apiPath = '/v1/messaging/providers/mailgun/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (domain != null) 'domain': domain,

            if (enabled != null) 'enabled': enabled,

            if (fromEmail != null) 'fromEmail': fromEmail,

            if (fromName != null) 'fromName': fromName,

            if (isEuRegion != null) 'isEuRegion': isEuRegion,

            if (name != null) 'name': name,

            if (replyToEmail != null) 'replyToEmail': replyToEmail,

            if (replyToName != null) 'replyToName': replyToName,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Create a new MSG91 provider.
  Future<models.Provider> messagingCreateMsg91Provider({required String name, required String providerId, String? authKey, bool? enabled, String? senderId, String? templateId}) async {
    const String apiPath = '/v1/messaging/providers/msg91';

        final Map<String, dynamic> apiParams = {
            if (authKey != null) 'authKey': authKey,

            if (enabled != null) 'enabled': enabled,

            'name': name,

            'providerId': providerId,

            if (senderId != null) 'senderId': senderId,

            if (templateId != null) 'templateId': templateId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Update a MSG91 provider by its unique ID.
  Future<models.Provider> messagingUpdateMsg91Provider({required String providerId, String? authKey, bool? enabled, String? name, String? senderId, String? templateId}) async {
    final String apiPath = '/v1/messaging/providers/msg91/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            if (authKey != null) 'authKey': authKey,

            if (enabled != null) 'enabled': enabled,

            if (name != null) 'name': name,

            if (senderId != null) 'senderId': senderId,

            if (templateId != null) 'templateId': templateId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Create a new Resend provider.
  Future<models.Provider> messagingCreateResendProvider({required String name, required String providerId, String? apiKey, bool? enabled, String? fromEmail, String? fromName, String? replyToEmail, String? replyToName}) async {
    const String apiPath = '/v1/messaging/providers/resend';

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (enabled != null) 'enabled': enabled,

            if (fromEmail != null) 'fromEmail': fromEmail,

            if (fromName != null) 'fromName': fromName,

            'name': name,

            'providerId': providerId,

            if (replyToEmail != null) 'replyToEmail': replyToEmail,

            if (replyToName != null) 'replyToName': replyToName,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Update a Resend provider by its unique ID.
  Future<models.Provider> messagingUpdateResendProvider({required String providerId, String? apiKey, bool? enabled, String? fromEmail, String? fromName, String? name, String? replyToEmail, String? replyToName}) async {
    final String apiPath = '/v1/messaging/providers/resend/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (enabled != null) 'enabled': enabled,

            if (fromEmail != null) 'fromEmail': fromEmail,

            if (fromName != null) 'fromName': fromName,

            if (name != null) 'name': name,

            if (replyToEmail != null) 'replyToEmail': replyToEmail,

            if (replyToName != null) 'replyToName': replyToName,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Create a new Sendgrid provider.
  Future<models.Provider> messagingCreateSendgridProvider({required String name, required String providerId, String? apiKey, bool? enabled, String? fromEmail, String? fromName, String? replyToEmail, String? replyToName}) async {
    const String apiPath = '/v1/messaging/providers/sendgrid';

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (enabled != null) 'enabled': enabled,

            if (fromEmail != null) 'fromEmail': fromEmail,

            if (fromName != null) 'fromName': fromName,

            'name': name,

            'providerId': providerId,

            if (replyToEmail != null) 'replyToEmail': replyToEmail,

            if (replyToName != null) 'replyToName': replyToName,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Update a Sendgrid provider by its unique ID.
  Future<models.Provider> messagingUpdateSendgridProvider({required String providerId, String? apiKey, bool? enabled, String? fromEmail, String? fromName, String? name, String? replyToEmail, String? replyToName}) async {
    final String apiPath = '/v1/messaging/providers/sendgrid/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (enabled != null) 'enabled': enabled,

            if (fromEmail != null) 'fromEmail': fromEmail,

            if (fromName != null) 'fromName': fromName,

            if (name != null) 'name': name,

            if (replyToEmail != null) 'replyToEmail': replyToEmail,

            if (replyToName != null) 'replyToName': replyToName,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Create a new Telesign provider.
  Future<models.Provider> messagingCreateTelesignProvider({required String name, required String providerId, String? apiKey, String? customerId, bool? enabled, String? from}) async {
    const String apiPath = '/v1/messaging/providers/telesign';

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (customerId != null) 'customerId': customerId,

            if (enabled != null) 'enabled': enabled,

            if (from != null) 'from': from,

            'name': name,

            'providerId': providerId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Update a Telesign provider by its unique ID.
  Future<models.Provider> messagingUpdateTelesignProvider({required String providerId, String? apiKey, String? customerId, bool? enabled, String? from, String? name}) async {
    final String apiPath = '/v1/messaging/providers/telesign/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (customerId != null) 'customerId': customerId,

            if (enabled != null) 'enabled': enabled,

            if (from != null) 'from': from,

            if (name != null) 'name': name,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Create a new Textmagic provider.
  Future<models.Provider> messagingCreateTextmagicProvider({required String name, required String providerId, String? apiKey, bool? enabled, String? from, String? username}) async {
    const String apiPath = '/v1/messaging/providers/textmagic';

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (enabled != null) 'enabled': enabled,

            if (from != null) 'from': from,

            'name': name,

            'providerId': providerId,

            if (username != null) 'username': username,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Update a Textmagic provider by its unique ID.
  Future<models.Provider> messagingUpdateTextmagicProvider({required String providerId, String? apiKey, bool? enabled, String? from, String? name, String? username}) async {
    final String apiPath = '/v1/messaging/providers/textmagic/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (enabled != null) 'enabled': enabled,

            if (from != null) 'from': from,

            if (name != null) 'name': name,

            if (username != null) 'username': username,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Create a new Twilio provider.
  Future<models.Provider> messagingCreateTwilioProvider({required String name, required String providerId, String? accountSid, String? authToken, bool? enabled, String? from}) async {
    const String apiPath = '/v1/messaging/providers/twilio';

        final Map<String, dynamic> apiParams = {
            if (accountSid != null) 'accountSid': accountSid,

            if (authToken != null) 'authToken': authToken,

            if (enabled != null) 'enabled': enabled,

            if (from != null) 'from': from,

            'name': name,

            'providerId': providerId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Update a Twilio provider by its unique ID.
  Future<models.Provider> messagingUpdateTwilioProvider({required String providerId, String? accountSid, String? authToken, bool? enabled, String? from, String? name}) async {
    final String apiPath = '/v1/messaging/providers/twilio/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            if (accountSid != null) 'accountSid': accountSid,

            if (authToken != null) 'authToken': authToken,

            if (enabled != null) 'enabled': enabled,

            if (from != null) 'from': from,

            if (name != null) 'name': name,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Create a new Vonage provider.
  Future<models.Provider> messagingCreateVonageProvider({required String name, required String providerId, String? apiKey, String? apiSecret, bool? enabled, String? from}) async {
    const String apiPath = '/v1/messaging/providers/vonage';

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (apiSecret != null) 'apiSecret': apiSecret,

            if (enabled != null) 'enabled': enabled,

            if (from != null) 'from': from,

            'name': name,

            'providerId': providerId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Update a Vonage provider by its unique ID.
  Future<models.Provider> messagingUpdateVonageProvider({required String providerId, String? apiKey, String? apiSecret, bool? enabled, String? from, String? name}) async {
    final String apiPath = '/v1/messaging/providers/vonage/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            if (apiKey != null) 'apiKey': apiKey,

            if (apiSecret != null) 'apiSecret': apiSecret,

            if (enabled != null) 'enabled': enabled,

            if (from != null) 'from': from,

            if (name != null) 'name': name,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Delete a provider by its unique ID.
  Future messagingDeleteProvider({required String providerId}) async {
    final String apiPath = '/v1/messaging/providers/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a provider by its unique ID.
  /// 
  Future<models.Provider> messagingGetProvider({required String providerId}) async {
    final String apiPath = '/v1/messaging/providers/{providerId}'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Provider.fromMap(res.data);

  }

  /// Get the provider activity logs listed by its unique ID.
  Future<models.LogList> messagingListProviderLogs({required String providerId, List<String>? queries, bool? total}) async {
    final String apiPath = '/v1/messaging/providers/{providerId}/logs'.replaceAll('{providerId}', providerId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LogList.fromMap(res.data);

  }

  /// Get the subscriber activity logs listed by its unique ID.
  Future<models.LogList> messagingListSubscriberLogs({required String subscriberId, List<String>? queries, bool? total}) async {
    final String apiPath = '/v1/messaging/subscribers/{subscriberId}/logs'.replaceAll('{subscriberId}', subscriberId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LogList.fromMap(res.data);

  }

  /// Get a list of all topics from the current Revenexx project.
  Future<models.TopicList> messagingListTopics({List<String>? queries, String? search, bool? total}) async {
    const String apiPath = '/v1/messaging/topics';

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (search != null) 'search': search,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.TopicList.fromMap(res.data);

  }

  /// Create a new topic.
  Future<models.Topic> messagingCreateTopic({required String name, required String topicId, List<String>? subscribe}) async {
    const String apiPath = '/v1/messaging/topics';

        final Map<String, dynamic> apiParams = {
            'name': name,

            if (subscribe != null) 'subscribe': subscribe,

            'topicId': topicId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Topic.fromMap(res.data);

  }

  /// Delete a topic by its unique ID.
  Future messagingDeleteTopic({required String topicId}) async {
    final String apiPath = '/v1/messaging/topics/{topicId}'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a topic by its unique ID.
  /// 
  Future<models.Topic> messagingGetTopic({required String topicId}) async {
    final String apiPath = '/v1/messaging/topics/{topicId}'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Topic.fromMap(res.data);

  }

  /// Update a topic by its unique ID.
  /// 
  Future<models.Topic> messagingUpdateTopic({required String topicId, String? name, List<String>? subscribe}) async {
    final String apiPath = '/v1/messaging/topics/{topicId}'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            if (name != null) 'name': name,

            if (subscribe != null) 'subscribe': subscribe,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Topic.fromMap(res.data);

  }

  /// Get the topic activity logs listed by its unique ID.
  Future<models.LogList> messagingListTopicLogs({required String topicId, List<String>? queries, bool? total}) async {
    final String apiPath = '/v1/messaging/topics/{topicId}/logs'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.LogList.fromMap(res.data);

  }

  /// Get a list of all subscribers from the current Revenexx project.
  Future<models.SubscriberList> messagingListSubscribers({required String topicId, List<String>? queries, String? search, bool? total}) async {
    final String apiPath = '/v1/messaging/topics/{topicId}/subscribers'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            if (queries != null) 'queries': queries,

            if (search != null) 'search': search,

            if (total != null) 'total': total,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.SubscriberList.fromMap(res.data);

  }

  /// Create a new subscriber.
  Future<models.Subscriber> messagingCreateSubscriber({required String topicId, required String subscriberId, required String targetId}) async {
    final String apiPath = '/v1/messaging/topics/{topicId}/subscribers'.replaceAll('{topicId}', topicId);

        final Map<String, dynamic> apiParams = {
            'subscriberId': subscriberId,

            'targetId': targetId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Subscriber.fromMap(res.data);

  }

  /// Delete a subscriber by its unique ID.
  Future messagingDeleteSubscriber({required String topicId, required String subscriberId}) async {
    final String apiPath = '/v1/messaging/topics/{topicId}/subscribers/{subscriberId}'.replaceAll('{topicId}', topicId).replaceAll('{subscriberId}', subscriberId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Get a subscriber by its unique ID.
  /// 
  Future<models.Subscriber> messagingGetSubscriber({required String topicId, required String subscriberId}) async {
    final String apiPath = '/v1/messaging/topics/{topicId}/subscribers/{subscriberId}'.replaceAll('{topicId}', topicId).replaceAll('{subscriberId}', subscriberId);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Subscriber.fromMap(res.data);

  }
}