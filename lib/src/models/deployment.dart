part of '../../models.dart';

/// Deployment
class Deployment implements Model {
    /// Deployment creation date in ISO 8601 format.
    final String $createdAt;

    /// Deployment ID.
    final String $id;

    /// Deployment update date in ISO 8601 format.
    final String $updatedAt;

    /// Whether the deployment should be automatically activated.
    final bool activate;

    /// Raw billing.json bytes captured from the source archive at deploy time. Empty when no billing.json was shipped (private app).
    final String billingJson;

    /// The current build time in seconds.
    final int buildDuration;

    /// The current build ID.
    final String buildId;

    /// The build logs.
    final String buildLogs;

    /// The build output size in bytes.
    final int buildSize;

    /// The entrypoint file to use to execute the deployment code.
    final String entrypoint;

    /// Raw manifest.json bytes captured from the source archive at deploy time. Empty for legacy Function/Site deployments without a manifest.
    final String manifestJson;

    /// The branch of the vcs repository
    final String providerBranch;

    /// The branch of the vcs repository
    final String providerBranchUrl;

    /// The name of vcs commit author
    final String providerCommitAuthor;

    /// The url of vcs commit author
    final String providerCommitAuthorUrl;

    /// The commit hash of the vcs commit
    final String providerCommitHash;

    /// The commit message
    final String providerCommitMessage;

    /// The url of the vcs commit
    final String providerCommitUrl;

    /// The name of the vcs provider repository
    final String providerRepositoryName;

    /// The name of the vcs provider repository owner
    final String providerRepositoryOwner;

    /// The url of the vcs provider repository
    final String providerRepositoryUrl;

    /// Resource ID.
    final String resourceId;

    /// Resource type.
    final String resourceType;

    /// Screenshot with dark theme preference file ID.
    final String screenshotDark;

    /// Screenshot with light theme preference file ID.
    final String screenshotLight;

    /// The code size in bytes.
    final int sourceSize;

    /// The deployment status. Possible values are &quot;waiting&quot;, &quot;processing&quot;, &quot;building&quot;, &quot;ready&quot;, &quot;canceled&quot; and &quot;failed&quot;.
    final enums.DeploymentStatus status;

    /// The total size in bytes (source and build output).
    final int totalSize;

    /// Type of deployment.
    final String type;

    Deployment({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.activate,
        required this.billingJson,
        required this.buildDuration,
        required this.buildId,
        required this.buildLogs,
        required this.buildSize,
        required this.entrypoint,
        required this.manifestJson,
        required this.providerBranch,
        required this.providerBranchUrl,
        required this.providerCommitAuthor,
        required this.providerCommitAuthorUrl,
        required this.providerCommitHash,
        required this.providerCommitMessage,
        required this.providerCommitUrl,
        required this.providerRepositoryName,
        required this.providerRepositoryOwner,
        required this.providerRepositoryUrl,
        required this.resourceId,
        required this.resourceType,
        required this.screenshotDark,
        required this.screenshotLight,
        required this.sourceSize,
        required this.status,
        required this.totalSize,
        required this.type,
    });

    factory Deployment.fromMap(Map<String, dynamic> map) {
        return Deployment(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            activate: map['activate'],
            billingJson: map['billingJson'].toString(),
            buildDuration: map['buildDuration'],
            buildId: map['buildId'].toString(),
            buildLogs: map['buildLogs'].toString(),
            buildSize: map['buildSize'],
            entrypoint: map['entrypoint'].toString(),
            manifestJson: map['manifestJson'].toString(),
            providerBranch: map['providerBranch'].toString(),
            providerBranchUrl: map['providerBranchUrl'].toString(),
            providerCommitAuthor: map['providerCommitAuthor'].toString(),
            providerCommitAuthorUrl: map['providerCommitAuthorUrl'].toString(),
            providerCommitHash: map['providerCommitHash'].toString(),
            providerCommitMessage: map['providerCommitMessage'].toString(),
            providerCommitUrl: map['providerCommitUrl'].toString(),
            providerRepositoryName: map['providerRepositoryName'].toString(),
            providerRepositoryOwner: map['providerRepositoryOwner'].toString(),
            providerRepositoryUrl: map['providerRepositoryUrl'].toString(),
            resourceId: map['resourceId'].toString(),
            resourceType: map['resourceType'].toString(),
            screenshotDark: map['screenshotDark'].toString(),
            screenshotLight: map['screenshotLight'].toString(),
            sourceSize: map['sourceSize'],
            status: enums.DeploymentStatus.values.firstWhere((e) => e.value == map['status']),
            totalSize: map['totalSize'],
            type: map['type'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "activate": activate,
            "billingJson": billingJson,
            "buildDuration": buildDuration,
            "buildId": buildId,
            "buildLogs": buildLogs,
            "buildSize": buildSize,
            "entrypoint": entrypoint,
            "manifestJson": manifestJson,
            "providerBranch": providerBranch,
            "providerBranchUrl": providerBranchUrl,
            "providerCommitAuthor": providerCommitAuthor,
            "providerCommitAuthorUrl": providerCommitAuthorUrl,
            "providerCommitHash": providerCommitHash,
            "providerCommitMessage": providerCommitMessage,
            "providerCommitUrl": providerCommitUrl,
            "providerRepositoryName": providerRepositoryName,
            "providerRepositoryOwner": providerRepositoryOwner,
            "providerRepositoryUrl": providerRepositoryUrl,
            "resourceId": resourceId,
            "resourceType": resourceType,
            "screenshotDark": screenshotDark,
            "screenshotLight": screenshotLight,
            "sourceSize": sourceSize,
            "status": status.value,
            "totalSize": totalSize,
            "type": type,
        };
    }
}
