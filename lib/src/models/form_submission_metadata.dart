part of '../../models.dart';

/// Free-form metadata, plus what this app stamped on at insert. The recipient is resolved ONCE, here, because this row is the payload of `form.submitted` — a workflow reads the address off the event instead of re-resolving a form's settings that may since have changed.
class FormSubmissionMetadata implements Model {
    /// The resolved notification recipient, or null when neither the form nor the tenant names one.
    final String? notify_email;

    /// Which of the two configured recipients won: the form's own, or the tenant setting.
    final enums.FormNotifySource? notify_source;

    /// Present only on a submission the honeypot caught: 'honeypot'.
    final String? spam_reason;

    final Map<String, dynamic> data;

    FormSubmissionMetadata({
        this.notify_email,
        this.notify_source,
        this.spam_reason,
        required this.data,
    });

    factory FormSubmissionMetadata.fromMap(Map<String, dynamic> map) {
        return FormSubmissionMetadata(
            notify_email: map['notify_email']?.toString(),
            notify_source: map['notify_source'] != null ? enums.FormNotifySource.values.firstWhere((e) => e.value == map['notify_source']) : null,
            spam_reason: map['spam_reason']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "notify_email": notify_email,
            "notify_source": notify_source?.value,
            "spam_reason": spam_reason,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
