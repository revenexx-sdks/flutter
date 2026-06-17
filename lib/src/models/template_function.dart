part of '../../models.dart';

/// Template Function
class TemplateFunction implements Model {
    /// Function execution schedult in CRON format.
    final String cron;

    /// Function trigger events.
    final List<String> events;

    /// Function Template Icon.
    final String icon;

    /// Function Template ID.
    final String id;

    /// Function Template Instructions.
    final String instructions;

    /// Function Template Name.
    final String name;

    /// Execution permissions.
    final List<String> permissions;

    /// VCS (Version Control System) Owner.
    final String providerOwner;

    /// VCS (Version Control System) Repository ID
    final String providerRepositoryId;

    /// VCS (Version Control System) branch version (tag).
    final String providerVersion;

    /// List of runtimes that can be used with this template.
    final List<TemplateRuntime> runtimes;

    /// Function scopes.
    final List<String> scopes;

    /// Function Template Tagline.
    final String tagline;

    /// Function execution timeout in seconds.
    final int timeout;

    /// Function use cases.
    final List<String> useCases;

    /// Function variables.
    final List<TemplateVariable> variables;

    /// VCS (Version Control System) Provider.
    final String vcsProvider;

    TemplateFunction({
        required this.cron,
        required this.events,
        required this.icon,
        required this.id,
        required this.instructions,
        required this.name,
        required this.permissions,
        required this.providerOwner,
        required this.providerRepositoryId,
        required this.providerVersion,
        required this.runtimes,
        required this.scopes,
        required this.tagline,
        required this.timeout,
        required this.useCases,
        required this.variables,
        required this.vcsProvider,
    });

    factory TemplateFunction.fromMap(Map<String, dynamic> map) {
        return TemplateFunction(
            cron: map['cron'].toString(),
            events: List.from(map['events'] ?? []),
            icon: map['icon'].toString(),
            id: map['id'].toString(),
            instructions: map['instructions'].toString(),
            name: map['name'].toString(),
            permissions: List.from(map['permissions'] ?? []),
            providerOwner: map['providerOwner'].toString(),
            providerRepositoryId: map['providerRepositoryId'].toString(),
            providerVersion: map['providerVersion'].toString(),
            runtimes: List<TemplateRuntime>.from(map['runtimes'].map((p) => TemplateRuntime.fromMap(p))),
            scopes: List.from(map['scopes'] ?? []),
            tagline: map['tagline'].toString(),
            timeout: map['timeout'],
            useCases: List.from(map['useCases'] ?? []),
            variables: List<TemplateVariable>.from(map['variables'].map((p) => TemplateVariable.fromMap(p))),
            vcsProvider: map['vcsProvider'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cron": cron,
            "events": events,
            "icon": icon,
            "id": id,
            "instructions": instructions,
            "name": name,
            "permissions": permissions,
            "providerOwner": providerOwner,
            "providerRepositoryId": providerRepositoryId,
            "providerVersion": providerVersion,
            "runtimes": runtimes.map((p) => p.toMap()).toList(),
            "scopes": scopes,
            "tagline": tagline,
            "timeout": timeout,
            "useCases": useCases,
            "variables": variables.map((p) => p.toMap()).toList(),
            "vcsProvider": vcsProvider,
        };
    }
}
