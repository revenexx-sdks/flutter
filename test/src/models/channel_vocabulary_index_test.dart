import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelVocabularyIndex', () {
    test('model', () {
      final model = ChannelVocabularyIndex();

      final map = model.toMap();
      final result = ChannelVocabularyIndex.fromMap(map);
    });
  });
}
