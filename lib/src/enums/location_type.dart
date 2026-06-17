part of '../../enums.dart';

enum LocationType {
    warehouse(value: 'warehouse'),
    store(value: 'store'),
    dropship(value: 'dropship'),
    virtual(value: 'virtual');

    const LocationType({
        required this.value
    });

    final String value;

    String toJson() => value;
}