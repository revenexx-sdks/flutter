part of '../../models.dart';

/// Execution
class Execution implements Model {
  /// Execution creation date in ISO 8601 format.
  final String $createdAt;

  /// Execution ID.
  final String $id;

  /// Execution roles.
  final List<String> $permissions;

  /// Execution update date in ISO 8601 format.
  final String $updatedAt;

  /// Function's deployment ID used to create the execution.
  final String deploymentId;

  /// Resource(function/site) execution duration in seconds.
  final double duration;

  /// Function errors. Includes the last 4,000 characters. This will return an empty string unless the response is returned using an API key or as part of a webhook payload.
  final String errors;

  /// Function ID.
  final String functionId;

  /// Function logs. Includes the last 4,000 characters. This will return an empty string unless the response is returned using an API key or as part of a webhook payload.
  final String logs;

  /// HTTP request headers as a key-value object. This will return only whitelisted headers. All headers are returned if execution is created as synchronous.
  final List<Headers> requestHeaders;

  /// HTTP request method type.
  final String requestMethod;

  /// HTTP request path and query.
  final String requestPath;

  /// HTTP response body. This will return empty unless execution is created as synchronous.
  final String responseBody;

  /// HTTP response headers as a key-value object. This will return only whitelisted headers. All headers are returned if execution is created as synchronous.
  final List<Headers> responseHeaders;

  /// HTTP response status code.
  final int responseStatusCode;

  /// The scheduled time for execution. If left empty, execution will be queued immediately.
  final String? scheduledAt;

  /// The status of the function execution. Possible values can be: `waiting`, `processing`, `completed`, `failed`, or `scheduled`.
  final enums.ExecutionStatus status;

  /// The trigger that caused the function to execute. Possible values can be: `http`, `schedule`, or `event`.
  final enums.ExecutionTrigger trigger;

  Execution({
    required this.$createdAt,
    required this.$id,
    required this.$permissions,
    required this.$updatedAt,
    required this.deploymentId,
    required this.duration,
    required this.errors,
    required this.functionId,
    required this.logs,
    required this.requestHeaders,
    required this.requestMethod,
    required this.requestPath,
    required this.responseBody,
    required this.responseHeaders,
    required this.responseStatusCode,
    this.scheduledAt,
    required this.status,
    required this.trigger,
  });

  factory Execution.fromMap(Map<String, dynamic> map) {
    return Execution(
      $createdAt: map['\$createdAt'].toString(),
      $id: map['\$id'].toString(),
      $permissions: List.from(map['\$permissions'] ?? []),
      $updatedAt: map['\$updatedAt'].toString(),
      deploymentId: map['deploymentId'].toString(),
      duration: map['duration'].toDouble(),
      errors: map['errors'].toString(),
      functionId: map['functionId'].toString(),
      logs: map['logs'].toString(),
      requestHeaders: List<Headers>.from(
          map['requestHeaders'].map((p) => Headers.fromMap(p))),
      requestMethod: map['requestMethod'].toString(),
      requestPath: map['requestPath'].toString(),
      responseBody: map['responseBody'].toString(),
      responseHeaders: List<Headers>.from(
          map['responseHeaders'].map((p) => Headers.fromMap(p))),
      responseStatusCode: map['responseStatusCode'],
      scheduledAt: map['scheduledAt']?.toString(),
      status: enums.ExecutionStatus.values
          .firstWhere((e) => e.value == map['status']),
      trigger: enums.ExecutionTrigger.values
          .firstWhere((e) => e.value == map['trigger']),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$createdAt": $createdAt,
      "\$id": $id,
      "\$permissions": $permissions,
      "\$updatedAt": $updatedAt,
      "deploymentId": deploymentId,
      "duration": duration,
      "errors": errors,
      "functionId": functionId,
      "logs": logs,
      "requestHeaders": requestHeaders.map((p) => p.toMap()).toList(),
      "requestMethod": requestMethod,
      "requestPath": requestPath,
      "responseBody": responseBody,
      "responseHeaders": responseHeaders.map((p) => p.toMap()).toList(),
      "responseStatusCode": responseStatusCode,
      "scheduledAt": scheduledAt,
      "status": status.value,
      "trigger": trigger.value,
    };
  }
}
