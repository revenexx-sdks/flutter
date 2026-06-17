import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Site', () {
    test('model', () {
      final model = Site(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        adapter: '',
        buildCommand: '',
        buildRuntime: '',
        deploymentCreatedAt: '',
        deploymentId: '',
        deploymentScreenshotDark: '',
        deploymentScreenshotLight: '',
        enabled: true,
        fallbackFile: '',
        framework: '',
        installCommand: '',
        installationId: '',
        latestDeploymentCreatedAt: '',
        latestDeploymentId: '',
        latestDeploymentStatus: '',
        live: true,
        logging: true,
        name: '',
        outputDirectory: '',
        providerBranch: '',
        providerRepositoryId: '',
        providerRootDirectory: '',
        providerSilentMode: true,
        specification: '',
        timeout: ,
        vars: [],
      );

      final map = model.toMap();
      final result = Site.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.adapter, '');
                  expect(result.buildCommand, '');
                  expect(result.buildRuntime, '');
                  expect(result.deploymentCreatedAt, '');
                  expect(result.deploymentId, '');
                  expect(result.deploymentScreenshotDark, '');
                  expect(result.deploymentScreenshotLight, '');
                  expect(result.enabled, true);
                  expect(result.fallbackFile, '');
                  expect(result.framework, '');
                  expect(result.installCommand, '');
                  expect(result.installationId, '');
                  expect(result.latestDeploymentCreatedAt, '');
                  expect(result.latestDeploymentId, '');
                  expect(result.latestDeploymentStatus, '');
                  expect(result.live, true);
                  expect(result.logging, true);
                  expect(result.name, '');
                  expect(result.outputDirectory, '');
                  expect(result.providerBranch, '');
                  expect(result.providerRepositoryId, '');
                  expect(result.providerRootDirectory, '');
                  expect(result.providerSilentMode, true);
                  expect(result.specification, '');
                  expect(result.timeout, );
                  expect(result.vars, []);
          });
  });
}
