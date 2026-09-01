import 'package:revenexx/src/exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RevenexxException', () {
    test('toString should return correct string representation', () {
      final exception1 = RevenexxException();
      expect(exception1.toString(), equals('RevenexxException'));

      final exception2 = RevenexxException('Some error message');
      expect(
        exception2.toString(),
        equals('RevenexxException: , Some error message (0)'),
      );

      final exception3 = RevenexxException(
        'Invalid request',
        400,
        'ValidationError',
      );
      expect(
        exception3.toString(),
        equals(
          'RevenexxException: ValidationError, Invalid request (400)',
        ),
      );
    });
  });
}
