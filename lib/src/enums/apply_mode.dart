part of '../../enums.dart';

enum ApplyMode {
    upsert(value: 'upsert'),
    fullSync(value: 'full-sync'),
    append(value: 'append');

    const ApplyMode({
        required this.value
    });

    final String value;

    String toJson() => value;
}