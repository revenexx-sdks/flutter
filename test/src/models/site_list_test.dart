import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SiteList', () {
    test('model', () {
      final model = SiteList(
        sites: [],
        total: 0,
      );

      final map = model.toMap();
      final result = SiteList.fromMap(map);

            expect(result.sites, []);
                  expect(result.total, 0);
          });
  });
}
