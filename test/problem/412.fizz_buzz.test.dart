import 'package:test/test.dart';
import 'package:leetcode/src/problem/412.fizz_buzz.dart';

void main() => group('fizz buzz', () {
      final f = Solution().fizzBuzz;

      test('f(3)', () {
        expect(f(3), equals(['1', '2', 'Fizz']));
      });

      test('f(5)', () {
        expect(f(5), equals(['1', '2', 'Fizz', '4', 'Buzz']));
      });

      test('f(15)', () {
        expect(
          f(15),
          equals([
            '1',
            '2',
            'Fizz',
            '4',
            'Buzz',
            'Fizz',
            '7',
            '8',
            'Fizz',
            'Buzz',
            '11',
            'Fizz',
            '13',
            '14',
            'FizzBuzz',
          ]),
        );
      });
    });
