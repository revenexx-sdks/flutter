part of '../../enums.dart';

enum MessageClass {
    transactional(value: 'transactional'),
    marketing(value: 'marketing');

    const MessageClass({
        required this.value
    });

    final String value;

    String toJson() => value;
}