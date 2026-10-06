import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelVocabulary', () {
    test('model', () {
      final model = ChannelVocabulary();

      final map = model.toMap();
      final result = ChannelVocabulary.fromMap(map);
    });
  });
}
