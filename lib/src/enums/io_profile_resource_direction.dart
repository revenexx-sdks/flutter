part of '../../enums.dart';

enum IoProfileResourceDirection {
    ximport(value: 'import'),
    xexport(value: 'export');

    const IoProfileResourceDirection({
        required this.value
    });

    final String value;

    String toJson() => value;
}