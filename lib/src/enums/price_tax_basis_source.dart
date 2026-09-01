part of '../../enums.dart';

enum PriceTaxBasisSource {
    list(value: 'list'),
    listLegacy(value: 'list_legacy'),
    tenant(value: 'tenant');

    const PriceTaxBasisSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}