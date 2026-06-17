part of '../../models.dart';

/// Locale codes list
class LocaleCodeList implements Model {
    /// List of localeCodes.
    final List<LocaleCode> localeCodes;

    /// Total number of localeCodes that matched your query.
    final int total;

    LocaleCodeList({
        required this.localeCodes,
        required this.total,
    });

    factory LocaleCodeList.fromMap(Map<String, dynamic> map) {
        return LocaleCodeList(
            localeCodes: List<LocaleCode>.from(map['localeCodes'].map((p) => LocaleCode.fromMap(p))),
            total: map['total'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "localeCodes": localeCodes.map((p) => p.toMap()).toList(),
            "total": total,
        };
    }
}
