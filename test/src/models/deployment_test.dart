import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Deployment', () {
    test('model', () {
      final model = Deployment(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        activate: true,
        billingJson: '',
        buildDuration: ,
        buildId: '',
        buildLogs: '',
        buildSize: ,
        entrypoint: '',
        manifestJson: '',
        providerBranch: '',
        providerBranchUrl: '',
        providerCommitAuthor: '',
        providerCommitAuthorUrl: '',
        providerCommitHash: '',
        providerCommitMessage: '',
        providerCommitUrl: '',
        providerRepositoryName: '',
        providerRepositoryOwner: '',
        providerRepositoryUrl: '',
        resourceId: '',
        resourceType: '',
        screenshotDark: '',
        screenshotLight: '',
        sourceSize: ,
        status: DeploymentStatus.waiting,
        totalSize: ,
        type: '',
      );

      final map = model.toMap();
      final result = Deployment.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.activate, true);
                  expect(result.billingJson, '');
                  expect(result.buildDuration, );
                  expect(result.buildId, '');
                  expect(result.buildLogs, '');
                  expect(result.buildSize, );
                  expect(result.entrypoint, '');
                  expect(result.manifestJson, '');
                  expect(result.providerBranch, '');
                  expect(result.providerBranchUrl, '');
                  expect(result.providerCommitAuthor, '');
                  expect(result.providerCommitAuthorUrl, '');
                  expect(result.providerCommitHash, '');
                  expect(result.providerCommitMessage, '');
                  expect(result.providerCommitUrl, '');
                  expect(result.providerRepositoryName, '');
                  expect(result.providerRepositoryOwner, '');
                  expect(result.providerRepositoryUrl, '');
                  expect(result.resourceId, '');
                  expect(result.resourceType, '');
                  expect(result.screenshotDark, '');
                  expect(result.screenshotLight, '');
                  expect(result.sourceSize, );
                  expect(result.status, DeploymentStatus.waiting);
                  expect(result.totalSize, );
                  expect(result.type, '');
          });
  });
}
