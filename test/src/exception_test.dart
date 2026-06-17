import 'package:revenexx/src/exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RevenexxAPIRevenexxException', () {
    test('toString should return correct string representation', () {
      final exception1 = RevenexxAPIRevenexxException();
      expect(exception1.toString(), equals('RevenexxAPIRevenexxException'));

      final exception2 = RevenexxAPIRevenexxException('Some error message');
      expect(
        exception2.toString(),
        equals('AppwriteException: , Some error message (0)'),
      );

      final exception3 = AppwriteException(
        'Invalid request',
        400,
        'ValidationError',
      );
      expect(
        exception3.toString(),
        equals(
          'AppwriteException: ValidationError, Invalid request (400)',
        ),
      );
    });
  });
}
