import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LanguageList', () {
    test('model', () {
      final model = LanguageList(
        languages: [],
        total: ,
      );

      final map = model.toMap();
      final result = LanguageList.fromMap(map);

            expect(result.languages, []);
                  expect(result.total, );
          });
  });
}
