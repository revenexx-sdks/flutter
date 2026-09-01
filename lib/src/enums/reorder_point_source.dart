part of '../../enums.dart';

enum ReorderPointSource {
    row(value: 'row'),
    xdefault(value: 'default');

    const ReorderPointSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}