import 'package:leetcode/src/problem/13.roman_to_integer.dart';
import 'package:test/test.dart';

void main() => group('roman_to_integer', () {
      final f = Solution().romanToInt;

      test("f('I')", () {
        expect(f('I'), equals(1));
      });

      test("f('III')", () {
        expect(f('III'), equals(3));
      });

      test("f('MCMXCIV')", () {
        expect(f('MCMXCIV'), equals(1994));
      });

      test("f('IV')", () {
        expect(f('IV'), equals(4));
      });

      test("f('LVIII')", () {
        expect(f('LVIII'), equals(58));
      });

      test("f('CMIX')", () {
        expect(f('CMIX'), equals(909));
      });

      test("f('CMDIXIII')", () {
        expect(f('CMDIXIII'), equals(1412));
      });
    });
