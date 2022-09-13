import 'package:leetcode/src/problem/1576.replace_all_question_mark.dart';
import 'package:test/test.dart';

void main() => group('roman_to_integer', () {
      final f1 = SolutionV1().modifyString;
      final f2 = SolutionV2().modifyString;

      test("f('j?qg??b')", () {
        expect(f1('j?qg??b'), equals('jaqgacb'));
        expect(f2('j?qg??b'), equals('jaqgacb'));
      });

      test("f('helloworld')", () {
        expect(f1('helloworld'), equals('helloworld'));
        expect(f2('helloworld'), equals('helloworld'));
      });

      test("f('???')", () {
        expect(f1('??'), equals('ab'));
        expect(f2('??'), equals('ab'));
      });

      test("f('?')", () {
        expect(f1('?'), equals('a'));
        expect(f2('?'), equals('a'));
      });

      test("f('?ab?c??d??')", () {
        expect(f1('?ab?c??b??'), equals('babacacbab'));
        expect(f2('?ab?c??b??'), equals('babacacbab'));
      });
    });
