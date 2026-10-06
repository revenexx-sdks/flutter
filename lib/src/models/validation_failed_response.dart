part of '../../models.dart';

///
class ValidationFailedResponse implements Model {
  ///
  final List<String>? errors;

  ///
  final enums.ValidationFailedResponseStatus? status;

  ValidationFailedResponse({
    this.errors,
    this.status,
  });

  factory ValidationFailedResponse.fromMap(Map<String, dynamic> map) {
    return ValidationFailedResponse(
      errors: List.from(map['errors'] ?? []),
      status: map['status'] != null
          ? enums.ValidationFailedResponseStatus.values
              .firstWhere((e) => e.value == map['status'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "errors": errors,
      "status": status?.value,
    };
  }
}
