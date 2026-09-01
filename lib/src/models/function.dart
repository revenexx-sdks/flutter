part of '../../models.dart';

/// Function
class Func implements Model {
    /// Function creation date in ISO 8601 format.
    final String $createdAt;

    /// Function ID.
    final String $id;

    /// Function update date in ISO 8601 format.
    final String $updatedAt;

    /// The build command used to build the deployment.
    final String commands;

    /// Active deployment creation date in ISO 8601 format.
    final String deploymentCreatedAt;

    /// Function's active deployment ID.
    final String deploymentId;

    /// Function enabled.
    final bool enabled;

    /// The entrypoint file used to execute the deployment.
    final String entrypoint;

    /// Function trigger events.
    final List<String> events;

    /// Execution permissions.
    final List<String> execute;

    /// Function VCS (Version Control System) installation id.
    final String installationId;

    /// Latest deployment creation date in ISO 8601 format.
    final String latestDeploymentCreatedAt;

    /// Function's latest deployment ID.
    final String latestDeploymentId;

    /// Status of latest deployment. Possible values are "waiting", "processing", "building", "ready", and "failed".
    final String latestDeploymentStatus;

    /// Is the function deployed with the latest configuration? This is set to false if you've changed an environment variables, entrypoint, commands, or other settings that needs redeploy to be applied. When the value is false, redeploy the function to update it with the latest configuration.
    final bool live;

    /// When disabled, executions will exclude logs and errors, and will be slightly faster.
    final bool logging;

    /// Function name.
    final String name;

    /// VCS (Version Control System) branch name
    final String providerBranch;

    /// VCS (Version Control System) Repository ID
    final String providerRepositoryId;

    /// Path to function in VCS (Version Control System) repository
    final String providerRootDirectory;

    /// Is VCS (Version Control System) connection is in silent mode? When in silence mode, no comments will be posted on the repository pull or merge requests
    final bool providerSilentMode;

    /// Function execution and build runtime.
    final String runtime;

    /// Function execution schedule in CRON format.
    final String schedule;

    /// Allowed permission scopes.
    final List<String> scopes;

    /// Machine specification for builds and executions.
    final String specification;

    /// Function execution timeout in seconds.
    final int timeout;

    /// Function variables.
    final List<Variable> vars;

    /// Version of Open Runtimes used for the function.
    final String version;

    Func({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.commands,
        required this.deploymentCreatedAt,
        required this.deploymentId,
        required this.enabled,
        required this.entrypoint,
        required this.events,
        required this.execute,
        required this.installationId,
        required this.latestDeploymentCreatedAt,
        required this.latestDeploymentId,
        required this.latestDeploymentStatus,
        required this.live,
        required this.logging,
        required this.name,
        required this.providerBranch,
        required this.providerRepositoryId,
        required this.providerRootDirectory,
        required this.providerSilentMode,
        required this.runtime,
        required this.schedule,
        required this.scopes,
        required this.specification,
        required this.timeout,
        required this.vars,
        required this.version,
    });

    factory Func.fromMap(Map<String, dynamic> map) {
        return Func(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            commands: map['commands'].toString(),
            deploymentCreatedAt: map['deploymentCreatedAt'].toString(),
            deploymentId: map['deploymentId'].toString(),
            enabled: map['enabled'],
            entrypoint: map['entrypoint'].toString(),
            events: List.from(map['events'] ?? []),
            execute: List.from(map['execute'] ?? []),
            installationId: map['installationId'].toString(),
            latestDeploymentCreatedAt: map['latestDeploymentCreatedAt'].toString(),
            latestDeploymentId: map['latestDeploymentId'].toString(),
            latestDeploymentStatus: map['latestDeploymentStatus'].toString(),
            live: map['live'],
            logging: map['logging'],
            name: map['name'].toString(),
            providerBranch: map['providerBranch'].toString(),
            providerRepositoryId: map['providerRepositoryId'].toString(),
            providerRootDirectory: map['providerRootDirectory'].toString(),
            providerSilentMode: map['providerSilentMode'],
            runtime: map['runtime'].toString(),
            schedule: map['schedule'].toString(),
            scopes: List.from(map['scopes'] ?? []),
            specification: map['specification'].toString(),
            timeout: map['timeout'],
            vars: List<Variable>.from(map['vars'].map((p) => Variable.fromMap(p))),
            version: map['version'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "commands": commands,
            "deploymentCreatedAt": deploymentCreatedAt,
            "deploymentId": deploymentId,
            "enabled": enabled,
            "entrypoint": entrypoint,
            "events": events,
            "execute": execute,
            "installationId": installationId,
            "latestDeploymentCreatedAt": latestDeploymentCreatedAt,
            "latestDeploymentId": latestDeploymentId,
            "latestDeploymentStatus": latestDeploymentStatus,
            "live": live,
            "logging": logging,
            "name": name,
            "providerBranch": providerBranch,
            "providerRepositoryId": providerRepositoryId,
            "providerRootDirectory": providerRootDirectory,
            "providerSilentMode": providerSilentMode,
            "runtime": runtime,
            "schedule": schedule,
            "scopes": scopes,
            "specification": specification,
            "timeout": timeout,
            "vars": vars.map((p) => p.toMap()).toList(),
            "version": version,
        };
    }
}
