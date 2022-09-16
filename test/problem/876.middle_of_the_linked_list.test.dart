import 'package:leetcode/src/problem/876.middle_of_the_linked_list.dart';
import 'package:test/test.dart';

void main() => group('middle of the linked list.dart', () {
      final f1 = SolutionV1().middleNode;
      final f2 = SolutionV2().middleNode;
      final f3 = SolutionV3().middleNode;
      final f4 = SolutionV4().middleNode;

      ListNode? generateNode(int from, int to) {
        if (from == to) return ListNode(from);
        return ListNode(from, generateNode(from + 1, to));
      }

      final arg1 = generateNode(1, 5);
      final equals1 = generateNode(3, 5);

      final arg2 = generateNode(1, 6);
      final equals2 = generateNode(4, 6);

      final arg3 = generateNode(1, 1);
      final equals3 = generateNode(1, 1);

      test('f([1,2,3,4,5])', () {
        expect(
          f1(arg1),
          equals(equals1),
        );
        expect(
          f2(arg1),
          equals(equals1),
        );
        expect(
          f3(arg1),
          equals(equals1),
        );
        expect(
          f4(arg1),
          equals(equals1),
        );
      });

      test('f([1,2,3,4,5])', () {
        expect(
          f1(arg2),
          equals(equals2),
        );
        expect(
          f2(arg2),
          equals(equals2),
        );
        expect(
          f3(arg2),
          equals(equals2),
        );
        expect(
          f4(arg2),
          equals(equals2),
        );
      });

      test('f([1,2,3,4,5])', () {
        expect(
          f1(arg3),
          equals(equals3),
        );
        expect(
          f2(arg3),
          equals(equals3),
        );
        expect(
          f3(arg3),
          equals(equals3),
        );
        expect(
          f4(arg3),
          equals(equals3),
        );
      });
    });
