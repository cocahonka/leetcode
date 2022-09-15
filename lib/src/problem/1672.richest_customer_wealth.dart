import 'dart:math';

class Solution {
  int maximumWealth(List<List<int>> accounts) =>
      accounts.fold(0, (prev, elem) => max(prev, elem.reduce((f, s) => f + s)));
}
