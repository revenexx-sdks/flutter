import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssetResource', () {
    test('model', () {
      final model = AssetResource(
        alt_text: '',
        content_hash: '',
        created_at: '',
        deleted_at: '',
        description: '',
        display_name: '',
        dominant_color: '',
        duration_ms: 0,
        folder_id: '',
        height: 0,
        id: '',
        kind: '',
        metadata: [],
        mime_type: '',
        model_url: '',
        original_name: '',
        page_count: 0,
        path_name: '',
        preview_url: '',
        processed_at: '',
        size_bytes: 0,
        status: '',
        tags: [],
        tenant_id: '',
        updated_at: '',
        url: '',
        usdz_url: '',
        visibility: '',
        width: 0,
      );

      final map = model.toMap();
      final result = AssetResource.fromMap(map);

            expect(result.alt_text, '');
                  expect(result.content_hash, '');
                  expect(result.created_at, '');
                  expect(result.deleted_at, '');
                  expect(result.description, '');
                  expect(result.display_name, '');
                  expect(result.dominant_color, '');
                  expect(result.duration_ms, 0);
                  expect(result.folder_id, '');
                  expect(result.height, 0);
                  expect(result.id, '');
                  expect(result.kind, '');
                  expect(result.metadata, []);
                  expect(result.mime_type, '');
                  expect(result.model_url, '');
                  expect(result.original_name, '');
                  expect(result.page_count, 0);
                  expect(result.path_name, '');
                  expect(result.preview_url, '');
                  expect(result.processed_at, '');
                  expect(result.size_bytes, 0);
                  expect(result.status, '');
                  expect(result.tags, []);
                  expect(result.tenant_id, '');
                  expect(result.updated_at, '');
                  expect(result.url, '');
                  expect(result.usdz_url, '');
                  expect(result.visibility, '');
                  expect(result.width, 0);
          });
  });
}
