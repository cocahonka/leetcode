import 'package:leetcode/src/problem/383.ransom_note.dart';
import 'package:test/test.dart';

void main() => group('ransom note', () {
      final f1 = SolutionV1().canConstruct;
      final f2 = SolutionV2().canConstruct;

      test("f('a', 'b')", () {
        expect(f1('a', 'b'), equals(false));
        expect(f2('a', 'b'), equals(false));
      });

      test("f('aa', 'ab')", () {
        expect(f1('aa', 'ab'), equals(false));
        expect(f2('aa', 'ab'), equals(false));
      });

      test("f('aa', 'aab')", () {
        expect(f1('aa', 'aab'), equals(true));
        expect(f2('aa', 'aab'), equals(true));
      });

      test("f('helloworld', 'wldorollleeh')", () {
        expect(f1('helloworld', 'wldorollleeh'), equals(true));
        expect(f2('helloworld', 'wldorollleeh'), equals(true));
      });
    });
