import 'package:leetcode/src/problem/118.pascals_triangle.dart';
import 'package:test/test.dart';

void main() => group('roman_to_integer', () {
      final f1 = SolutionV1().generate;
      final f2 = SolutionV2().generate;
      final f3 = SolutionV3().generate;
      final f4 = SolutionV4().generate;

      test('f(1)', () {
        expect(
          f1(1),
          equals([
            [1]
          ]),
        );
        expect(
          f2(1),
          equals([
            [1]
          ]),
        );
        expect(
          f3(1),
          equals([
            [1]
          ]),
        );
        expect(
          f4(1),
          equals([
            [1]
          ]),
        );
      });

      test('f(2)', () {
        expect(
          f1(2),
          equals([
            [1],
            [1, 1],
          ]),
        );
        expect(
          f2(2),
          equals([
            [1],
            [1, 1],
          ]),
        );
        expect(
          f3(2),
          equals([
            [1],
            [1, 1],
          ]),
        );
        expect(
          f4(2),
          equals([
            [1],
            [1, 1],
          ]),
        );
      });

      test('f(3)', () {
        expect(
          f1(3),
          equals([
            [1],
            [1, 1],
            [1, 2, 1],
          ]),
        );
        expect(
          f2(3),
          equals([
            [1],
            [1, 1],
            [1, 2, 1],
          ]),
        );
        expect(
          f3(3),
          equals([
            [1],
            [1, 1],
            [1, 2, 1],
          ]),
        );
        expect(
          f4(3),
          equals([
            [1],
            [1, 1],
            [1, 2, 1],
          ]),
        );
      });

      test('f(3)', () {
        expect(
          f1(5),
          equals([
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1],
            [1, 4, 6, 4, 1],
          ]),
        );
        expect(
          f2(5),
          equals([
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1],
            [1, 4, 6, 4, 1],
          ]),
        );
        expect(
          f3(5),
          equals([
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1],
            [1, 4, 6, 4, 1],
          ]),
        );
        expect(
          f4(5),
          equals([
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1],
            [1, 4, 6, 4, 1],
          ]),
        );
      });
    });
