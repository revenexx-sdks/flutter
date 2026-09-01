part of '../../enums.dart';

enum AssetsSource {
  storage(value: 'storage'),
  xexternal(value: 'external');

  const AssetsSource({required this.value});

  final String value;

  String toJson() => value;
}
