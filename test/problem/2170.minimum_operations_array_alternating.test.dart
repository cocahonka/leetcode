import 'package:test/test.dart';
import 'package:leetcode/src/problem/2170.minimum_operations_array_alternating.dart';

void main() => group('minimum_operations_array_alternating', () {
      final f = Solution().minimumOperations;

      test('f([3,1,3,2,4,3])', () {
        expect(f([3, 1, 3, 2, 4, 3]), equals(3));
      });

      test('f([1,2,2,2,2])', () {
        expect(f([1, 2, 2, 2, 2]), equals(2));
      });

      test('f([1])', () {
        expect(f([1]), equals(0));
      });

      test('f([1, 1])', () {
        expect(f([1, 1]), equals(1));
      });

      test('f([1, 2])', () {
        expect(f([1, 2]), equals(0));
      });
    });
