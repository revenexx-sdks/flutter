part of '../../models.dart';

/// Site
class Site implements Model {
    /// Site creation date in ISO 8601 format.
    final String $createdAt;

    /// Site ID.
    final String $id;

    /// Site update date in ISO 8601 format.
    final String $updatedAt;

    /// Site framework adapter.
    final String adapter;

    /// The build command used to build the site.
    final String buildCommand;

    /// Site build runtime.
    final String buildRuntime;

    /// Active deployment creation date in ISO 8601 format.
    final String deploymentCreatedAt;

    /// Site's active deployment ID.
    final String deploymentId;

    /// Screenshot of active deployment with dark theme preference file ID.
    final String deploymentScreenshotDark;

    /// Screenshot of active deployment with light theme preference file ID.
    final String deploymentScreenshotLight;

    /// Site enabled.
    final bool enabled;

    /// Name of the fallback file to serve instead of a 404 page. If null, the site runtime's built-in 404 page is served.
    final String fallbackFile;

    /// Site framework.
    final String framework;

    /// The install command used to install the site dependencies.
    final String installCommand;

    /// Site VCS (Version Control System) installation id.
    final String installationId;

    /// Latest deployment creation date in ISO 8601 format.
    final String latestDeploymentCreatedAt;

    /// Site's latest deployment ID.
    final String latestDeploymentId;

    /// Status of latest deployment. Possible values are "waiting", "processing", "building", "ready", and "failed".
    final String latestDeploymentStatus;

    /// Is the site deployed with the latest configuration? This is set to false if you've changed an environment variables, entrypoint, commands, or other settings that needs redeploy to be applied. When the value is false, redeploy the site to update it with the latest configuration.
    final bool live;

    /// When disabled, request logs will exclude logs and errors, and site responses will be slightly faster.
    final bool logging;

    /// Site name.
    final String name;

    /// The directory where the site build output is located.
    final String outputDirectory;

    /// VCS (Version Control System) branch name
    final String providerBranch;

    /// VCS (Version Control System) Repository ID
    final String providerRepositoryId;

    /// Path to site in VCS (Version Control System) repository
    final String providerRootDirectory;

    /// Is VCS (Version Control System) connection is in silent mode? When in silence mode, no comments will be posted on the repository pull or merge requests
    final bool providerSilentMode;

    /// Machine specification for builds and executions.
    final String specification;

    /// Site request timeout in seconds.
    final int timeout;

    /// Site variables.
    final List<Variable> vars;

    Site({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.adapter,
        required this.buildCommand,
        required this.buildRuntime,
        required this.deploymentCreatedAt,
        required this.deploymentId,
        required this.deploymentScreenshotDark,
        required this.deploymentScreenshotLight,
        required this.enabled,
        required this.fallbackFile,
        required this.framework,
        required this.installCommand,
        required this.installationId,
        required this.latestDeploymentCreatedAt,
        required this.latestDeploymentId,
        required this.latestDeploymentStatus,
        required this.live,
        required this.logging,
        required this.name,
        required this.outputDirectory,
        required this.providerBranch,
        required this.providerRepositoryId,
        required this.providerRootDirectory,
        required this.providerSilentMode,
        required this.specification,
        required this.timeout,
        required this.vars,
    });

    factory Site.fromMap(Map<String, dynamic> map) {
        return Site(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            adapter: map['adapter'].toString(),
            buildCommand: map['buildCommand'].toString(),
            buildRuntime: map['buildRuntime'].toString(),
            deploymentCreatedAt: map['deploymentCreatedAt'].toString(),
            deploymentId: map['deploymentId'].toString(),
            deploymentScreenshotDark: map['deploymentScreenshotDark'].toString(),
            deploymentScreenshotLight: map['deploymentScreenshotLight'].toString(),
            enabled: map['enabled'],
            fallbackFile: map['fallbackFile'].toString(),
            framework: map['framework'].toString(),
            installCommand: map['installCommand'].toString(),
            installationId: map['installationId'].toString(),
            latestDeploymentCreatedAt: map['latestDeploymentCreatedAt'].toString(),
            latestDeploymentId: map['latestDeploymentId'].toString(),
            latestDeploymentStatus: map['latestDeploymentStatus'].toString(),
            live: map['live'],
            logging: map['logging'],
            name: map['name'].toString(),
            outputDirectory: map['outputDirectory'].toString(),
            providerBranch: map['providerBranch'].toString(),
            providerRepositoryId: map['providerRepositoryId'].toString(),
            providerRootDirectory: map['providerRootDirectory'].toString(),
            providerSilentMode: map['providerSilentMode'],
            specification: map['specification'].toString(),
            timeout: map['timeout'],
            vars: List<Variable>.from(map['vars'].map((p) => Variable.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "adapter": adapter,
            "buildCommand": buildCommand,
            "buildRuntime": buildRuntime,
            "deploymentCreatedAt": deploymentCreatedAt,
            "deploymentId": deploymentId,
            "deploymentScreenshotDark": deploymentScreenshotDark,
            "deploymentScreenshotLight": deploymentScreenshotLight,
            "enabled": enabled,
            "fallbackFile": fallbackFile,
            "framework": framework,
            "installCommand": installCommand,
            "installationId": installationId,
            "latestDeploymentCreatedAt": latestDeploymentCreatedAt,
            "latestDeploymentId": latestDeploymentId,
            "latestDeploymentStatus": latestDeploymentStatus,
            "live": live,
            "logging": logging,
            "name": name,
            "outputDirectory": outputDirectory,
            "providerBranch": providerBranch,
            "providerRepositoryId": providerRepositoryId,
            "providerRootDirectory": providerRootDirectory,
            "providerSilentMode": providerSilentMode,
            "specification": specification,
            "timeout": timeout,
            "vars": vars.map((p) => p.toMap()).toList(),
        };
    }
}
