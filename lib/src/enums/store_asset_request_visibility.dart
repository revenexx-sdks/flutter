part of '../../enums.dart';

enum StoreAssetRequestVisibility {
    public(value: 'public'),
    private(value: 'private');

    const StoreAssetRequestVisibility({
        required this.value
    });

    final String value;

    String toJson() => value;
}