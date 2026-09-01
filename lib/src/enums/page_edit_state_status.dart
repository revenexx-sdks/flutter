part of '../../enums.dart';

enum PageEditStateStatus {
    active(value: 'active'),
    scheduled(value: 'scheduled'),
    archived(value: 'archived'),
    published(value: 'published');

    const PageEditStateStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}