import 'package:test/test.dart';
import 'package:leetcode/src/problem/1480.running_sum_of_1d_array.dart';

void main() => group('running sum of 1d array', () {
      final f = Solution().runningSum;

      test('f([1,2,3,4])', () {
        expect(f([1, 2, 3, 4]), equals([1, 3, 6, 10]));
      });

      test('f([1,1,1,1,1])', () {
        expect(f([1, 1, 1, 1, 1]), equals([1, 2, 3, 4, 5]));
      });

      test('f([3,1,2,10,1])', () {
        expect(f([3, 1, 2, 10, 1]), equals([3, 4, 6, 16, 17]));
      });
    });
