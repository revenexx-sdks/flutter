part of '../../models.dart';

/// Profile source/sink format. `bmecat` is profile-only — the ad-hoc
/// `/io/imports` and `/io/exports` endpoints do not accept it.
/// 
class IoProfileFormat implements Model {
    IoProfileFormat(
    );

    factory IoProfileFormat.fromMap(Map<String, dynamic> map) {
        return IoProfileFormat(
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
        };
    }
}
