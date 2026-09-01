part of '../../enums.dart';

enum ContactActivityKind {
    note(value: 'note'),
    call(value: 'call'),
    email(value: 'email'),
    meeting(value: 'meeting'),
    visit(value: 'visit'),
    task(value: 'task');

    const ContactActivityKind({
        required this.value
    });

    final String value;

    String toJson() => value;
}