part of '../../enums.dart';

enum ProductLabelAttributeSource {
    family(value: 'family'),
    setting(value: 'setting'),
    convention(value: 'convention');

    const ProductLabelAttributeSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}