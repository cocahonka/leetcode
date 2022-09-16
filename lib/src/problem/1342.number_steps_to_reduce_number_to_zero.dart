/*
 * Given an integer num, return the number of steps to reduce it to zero.
 *
 * In one step, if the current number is even, you have to divide it by 2,
 * otherwise, you have to subtract 1 from it.
 *
 *
 *
 * Example 1:
 *
 * Input: num = 14
 * Output: 6
 * 
 * Explanation:
 * Step 1) 14 is even; divide by 2 and obtain 7.
 * Step 2) 7 is odd; subtract 1 and obtain 6.
 * Step 3) 6 is even; divide by 2 and obtain 3.
 * Step 4) 3 is odd; subtract 1 and obtain 2.
 * Step 5) 2 is even; divide by 2 and obtain 1.
 * Step 6) 1 is odd; subtract 1 and obtain 0.
 * 
 * Example 2:
 *
 * Input: num = 8
 * Output: 4
 * 
 * Explanation:
 * Step 1) 8 is even; divide by 2 and obtain 4.
 * Step 2) 4 is even; divide by 2 and obtain 2.
 * Step 3) 2 is even; divide by 2 and obtain 1.
 * Step 4) 1 is odd; subtract 1 and obtain 0.
 * Example 3:
 *
 * Input: num = 123
 * Output: 12
 */

import 'dart:math';

class SolutionV1 {
  int numberOfSteps(int number) {
    var c = 0;
    for (; number != 0; ++c) {
      // ignore: parameter_assignments
      number = (number.isEven) ? (number >> 1) : (number - 1);
    }
    return c;
  }
}

class SolutionV2 {
  int numberOfSteps(int number) => (number == 0)
      ? 0
      : log(number) ~/ log(2) +
          number.toRadixString(2).replaceAll('0', '').length;
}
