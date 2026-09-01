import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelVocabularyValue', () {
    test('model', () {
      final model = ChannelVocabularyValue();

      final map = model.toMap();
      final result = ChannelVocabularyValue.fromMap(map);
    });
  });
}
