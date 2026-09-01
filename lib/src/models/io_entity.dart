part of '../../models.dart';

/// One importable / exportable entity of an installed app.
class IoEntity implements Model {
    /// 
    final String? app;

    /// 
    final String? entity;

    /// Humanised entity name for pickers.
    final String? label;

    /// The physical table name Baseline provisioned.
    final String? table;

    /// 
    final String? vendor;

    IoEntity({
        this.app,
        this.entity,
        this.label,
        this.table,
        this.vendor,
    });

    factory IoEntity.fromMap(Map<String, dynamic> map) {
        return IoEntity(
            app: map['app']?.toString(),
            entity: map['entity']?.toString(),
            label: map['label']?.toString(),
            table: map['table']?.toString(),
            vendor: map['vendor']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "app": app,
            "entity": entity,
            "label": label,
            "table": table,
            "vendor": vendor,
        };
    }
}
