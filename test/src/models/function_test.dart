import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Func', () {
    test('model', () {
      final model = Func(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        commands: '',
        deploymentCreatedAt: '',
        deploymentId: '',
        enabled: true,
        entrypoint: '',
        events: [],
        execute: [],
        installationId: '',
        latestDeploymentCreatedAt: '',
        latestDeploymentId: '',
        latestDeploymentStatus: '',
        live: true,
        logging: true,
        name: '',
        providerBranch: '',
        providerRepositoryId: '',
        providerRootDirectory: '',
        providerSilentMode: true,
        runtime: '',
        schedule: '',
        scopes: [],
        specification: '',
        timeout: 0,
        vars: [],
        version: '',
      );

      final map = model.toMap();
      final result = Func.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$updatedAt, '');
      expect(result.commands, '');
      expect(result.deploymentCreatedAt, '');
      expect(result.deploymentId, '');
      expect(result.enabled, true);
      expect(result.entrypoint, '');
      expect(result.events, []);
      expect(result.execute, []);
      expect(result.installationId, '');
      expect(result.latestDeploymentCreatedAt, '');
      expect(result.latestDeploymentId, '');
      expect(result.latestDeploymentStatus, '');
      expect(result.live, true);
      expect(result.logging, true);
      expect(result.name, '');
      expect(result.providerBranch, '');
      expect(result.providerRepositoryId, '');
      expect(result.providerRootDirectory, '');
      expect(result.providerSilentMode, true);
      expect(result.runtime, '');
      expect(result.schedule, '');
      expect(result.scopes, []);
      expect(result.specification, '');
      expect(result.timeout, 0);
      expect(result.vars, []);
      expect(result.version, '');
    });
  });
}
