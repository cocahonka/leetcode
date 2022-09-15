import 'package:test/test.dart';

import 'problem/118.pascals_triangle.test.dart' as pascals_triange;
import 'problem/13.roman_to_integer.test.dart' as roman_to_integer;
import 'problem/1480.running_sum_of_1d_array.test.dart'
    as running_sum_of_1d_array;
import 'problem/1576.replace_all_question_mark.test.dart'
    as replace_all_question_mark;
import 'problem/1672.richest_customer_wealth.test.dart'
    as richest_customer_wealth;
import 'problem/2170.minimum_operations_array_alternating.test.dart'
    as minimum_operations_array_alternating;
import 'problem/9.palindrome_number.test.dart' as palindrome_number;

void main() {
  group('problems', () {
    roman_to_integer.main();
    palindrome_number.main();
    pascals_triange.main();
    replace_all_question_mark.main();
    minimum_operations_array_alternating.main();
    running_sum_of_1d_array.main();
    richest_customer_wealth.main();
  });
}
