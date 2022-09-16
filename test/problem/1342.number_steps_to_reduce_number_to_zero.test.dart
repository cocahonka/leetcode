import 'package:leetcode/src/problem/1342.number_steps_to_reduce_number_to_zero.dart';
import 'package:test/test.dart';

void main() => group('number steps to reduce number to zero', () {
      final f1 = SolutionV1().numberOfSteps;
      final f2 = SolutionV2().numberOfSteps;

      test('f(0)', () {
        expect(f1(0), 0);
        expect(f2(0), 0);
      });

      test('f(1)', () {
        expect(f1(1), 1);
        expect(f2(1), 1);
      });

      test('f(14)', () {
        expect(f1(14), equals(6));
        expect(f2(14), equals(6));
      });

      test('f(8)', () {
        expect(f1(8), equals(4));
        expect(f2(8), equals(4));
      });

      test('f(123)', () {
        expect(f1(123), equals(12));
        expect(f2(123), equals(12));
      });
    });
