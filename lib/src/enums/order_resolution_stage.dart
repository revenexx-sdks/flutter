part of '../../enums.dart';

enum OrderResolutionStage {
    complete(value: 'complete'),
    reject(value: 'reject');

    const OrderResolutionStage({
        required this.value
    });

    final String value;

    String toJson() => value;
}