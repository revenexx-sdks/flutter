import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelVocabularyRef', () {
    test('model', () {
      final model = ChannelVocabularyRef();

      final map = model.toMap();
      final result = ChannelVocabularyRef.fromMap(map);
    });
  });
}
