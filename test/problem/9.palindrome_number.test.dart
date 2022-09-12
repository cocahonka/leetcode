import 'package:leetcode/src/problem/9.palindrome_number.dart';
import 'package:test/test.dart';

void main() => group('roman_to_integer', () {
      final f = Solution().isPalindrome;

      test('f(121)', () {
        expect(f(121), equals(true));
      });

      test('f(-121)', () {
        expect(f(-121), equals(false));
      });

      test('f(0)', () {
        expect(f(0), equals(true));
      });

      test('f(9)', () {
        expect(f(9), equals(true));
      });

      test('f(12321)', () {
        expect(f(12321), equals(true));
      });

      test('f(213312)', () {
        expect(f(213312), equals(true));
      });

      test('f(139310)', () {
        expect(f(139310), equals(false));
      });
    });
