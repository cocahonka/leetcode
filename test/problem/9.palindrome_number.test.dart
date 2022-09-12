import 'package:leetcode/src/problem/9.palindrome_number.dart';
import 'package:test/test.dart';

void main() => group('roman_to_integer', () {
      final f1 = SolutionV1().isPalindrome;
      final f2 = SolutionV2().isPalindrome;

      test('f(121)', () {
        expect(f1(121), equals(true));
        expect(f2(121), equals(true));
      });

      test('f(-121)', () {
        expect(f1(-121), equals(false));
        expect(f2(-121), equals(false));
      });

      test('f(123)', () {
        expect(f1(123), equals(false));
        expect(f2(123), equals(false));
      });

      test('f(0)', () {
        expect(f1(0), equals(true));
        expect(f2(0), equals(true));
      });

      test('f(9)', () {
        expect(f1(9), equals(true));
        expect(f2(9), equals(true));
      });

      test('f(12321)', () {
        expect(f1(12321), equals(true));
        expect(f2(12321), equals(true));
      });

      test('f(213312)', () {
        expect(f1(213312), equals(true));
        expect(f2(213312), equals(true));
      });

      test('f(139310)', () {
        expect(f1(139310), equals(false));
        expect(f2(139310), equals(false));
      });
    });
