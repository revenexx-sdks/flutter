part of '../../enums.dart';

enum ChannelInactiveBehavior {
    serve(value: 'serve'),
    block(value: 'block');

    const ChannelInactiveBehavior({
        required this.value
    });

    final String value;

    String toJson() => value;
}