part of '../../models.dart';

/// 
class ContactActivityRequest implements Model {
    /// Who logged it (operator id or email). Free text; this app does not resolve it.
    final String? actor;

    /// What happened. 'system' is deliberately NOT accepted — those rows are the registration decision trail and are written by the approve/reject routes. Default 'note'.
    final enums.ContactActivityKind? kind;

    /// The long form. Stored inside the event payload as `note`, not as a column of its own.
    final String? note;

    /// When it actually happened. Defaults to now — a call logged on Monday about Friday should say Friday.
    final String? occurred_at;

    /// One line a person can scan in a timeline. Required — an entry nobody can read at a glance is not worth the row.
    final String subject;

    ContactActivityRequest({
        this.actor,
        this.kind,
        this.note,
        this.occurred_at,
        required this.subject,
    });

    factory ContactActivityRequest.fromMap(Map<String, dynamic> map) {
        return ContactActivityRequest(
            actor: map['actor']?.toString(),
            kind: map['kind'] != null ? enums.ContactActivityKind.values.firstWhere((e) => e.value == map['kind']) : null,
            note: map['note']?.toString(),
            occurred_at: map['occurred_at']?.toString(),
            subject: map['subject'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "actor": actor,
            "kind": kind?.value,
            "note": note,
            "occurred_at": occurred_at,
            "subject": subject,
        };
    }
}
