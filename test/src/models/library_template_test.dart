import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LibraryTemplate', () {
    test('model', () {
      final model = LibraryTemplate(
        body_html: '',
        body_text: '',
        channel: '',
        created_at: '',
        description: '',
        design: [],
        id: '',
        key: '',
        locale: '',
        subject: '',
        suggested_event: '',
        suggested_recipient: '',
        title: '',
        updated_at: '',
        variables: [],
      );

      final map = model.toMap();
      final result = LibraryTemplate.fromMap(map);

            expect(result.body_html, '');
                  expect(result.body_text, '');
                  expect(result.channel, '');
                  expect(result.created_at, '');
                  expect(result.description, '');
                  expect(result.design, []);
                  expect(result.id, '');
                  expect(result.key, '');
                  expect(result.locale, '');
                  expect(result.subject, '');
                  expect(result.suggested_event, '');
                  expect(result.suggested_recipient, '');
                  expect(result.title, '');
                  expect(result.updated_at, '');
                  expect(result.variables, []);
          });
  });
}
