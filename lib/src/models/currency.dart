part of '../../models.dart';

/// Currency
class Currency implements Model {
    /// Currency code in [ISO 4217-1](http://en.wikipedia.org/wiki/ISO_4217) three-character format.
    final String code;

    /// Number of decimal digits.
    final int decimalDigits;

    /// Currency name.
    final String name;

    /// Currency plural name
    final String namePlural;

    /// Currency digit rounding.
    final double rounding;

    /// Currency symbol.
    final String symbol;

    /// Currency native symbol.
    final String symbolNative;

    Currency({
        required this.code,
        required this.decimalDigits,
        required this.name,
        required this.namePlural,
        required this.rounding,
        required this.symbol,
        required this.symbolNative,
    });

    factory Currency.fromMap(Map<String, dynamic> map) {
        return Currency(
            code: map['code'].toString(),
            decimalDigits: map['decimalDigits'],
            name: map['name'].toString(),
            namePlural: map['namePlural'].toString(),
            rounding: map['rounding'].toDouble(),
            symbol: map['symbol'].toString(),
            symbolNative: map['symbolNative'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "decimalDigits": decimalDigits,
            "name": name,
            "namePlural": namePlural,
            "rounding": rounding,
            "symbol": symbol,
            "symbolNative": symbolNative,
        };
    }
}
