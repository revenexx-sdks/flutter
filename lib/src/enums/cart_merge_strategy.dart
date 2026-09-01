part of '../../enums.dart';

enum CartMergeStrategy {
    merge(value: 'merge'),
    replace(value: 'replace');

    const CartMergeStrategy({
        required this.value
    });

    final String value;

    String toJson() => value;
}