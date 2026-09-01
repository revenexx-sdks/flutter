part of '../../enums.dart';

enum ProductCategoriesSource {
  manual(value: 'manual'),
  rule(value: 'rule');

  const ProductCategoriesSource({required this.value});

  final String value;

  String toJson() => value;
}
