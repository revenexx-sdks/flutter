part of '../../models.dart';

/// Health Certificate
class HealthCertificate implements Model {
    /// Issuer organisation
    final String issuerOrganisation;

    /// Certificate name
    final String name;

    /// Signature type SN
    final String signatureTypeSN;

    /// Subject SN
    final String subjectSN;

    /// Valid from
    final String validFrom;

    /// Valid to
    final String validTo;

    HealthCertificate({
        required this.issuerOrganisation,
        required this.name,
        required this.signatureTypeSN,
        required this.subjectSN,
        required this.validFrom,
        required this.validTo,
    });

    factory HealthCertificate.fromMap(Map<String, dynamic> map) {
        return HealthCertificate(
            issuerOrganisation: map['issuerOrganisation'].toString(),
            name: map['name'].toString(),
            signatureTypeSN: map['signatureTypeSN'].toString(),
            subjectSN: map['subjectSN'].toString(),
            validFrom: map['validFrom'].toString(),
            validTo: map['validTo'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "issuerOrganisation": issuerOrganisation,
            "name": name,
            "signatureTypeSN": signatureTypeSN,
            "subjectSN": subjectSN,
            "validFrom": validFrom,
            "validTo": validTo,
        };
    }
}
