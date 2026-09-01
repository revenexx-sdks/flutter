part of '../../enums.dart';

enum PriceTaxInclusiveDefault {
    net(value: 'net'),
    gross(value: 'gross');

    const PriceTaxInclusiveDefault({
        required this.value
    });

    final String value;

    String toJson() => value;
}