import 'package:test/test.dart';
import 'problem/13.roman_to_integer.test.dart' as roman_to_integer;
import 'problem/9.palindrome_number.test.dart' as palindrome_number;

void main() {
  group('problems', () {
    roman_to_integer.main();
    palindrome_number.main();
  });
}
