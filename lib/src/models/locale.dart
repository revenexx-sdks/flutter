part of '../../models.dart';

/// Locale
class Locale implements Model {
    /// Continent name. This field support localization.
    final String continent;

    /// Continent code. A two character continent code "AF" for Africa, "AN" for Antarctica, "AS" for Asia, "EU" for Europe, "NA" for North America, "OC" for Oceania, and "SA" for South America.
    final String continentCode;

    /// Country name. This field support localization.
    final String country;

    /// Country code in [ISO 3166-1](http://en.wikipedia.org/wiki/ISO_3166-1) two-character format
    final String countryCode;

    /// Currency code in [ISO 4217-1](http://en.wikipedia.org/wiki/ISO_4217) three-character format
    final String currency;

    /// True if country is part of the European Union.
    final bool eu;

    /// User IP address.
    final String ip;

    Locale({
        required this.continent,
        required this.continentCode,
        required this.country,
        required this.countryCode,
        required this.currency,
        required this.eu,
        required this.ip,
    });

    factory Locale.fromMap(Map<String, dynamic> map) {
        return Locale(
            continent: map['continent'].toString(),
            continentCode: map['continentCode'].toString(),
            country: map['country'].toString(),
            countryCode: map['countryCode'].toString(),
            currency: map['currency'].toString(),
            eu: map['eu'],
            ip: map['ip'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "continent": continent,
            "continentCode": continentCode,
            "country": country,
            "countryCode": countryCode,
            "currency": currency,
            "eu": eu,
            "ip": ip,
        };
    }
}
