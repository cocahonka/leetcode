class Solution {
  static const _conversion = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int romanToInt(String data) {
    var result = 0;
    var prev = 0;
    var curr = 0;

    for (var i = 0; i < data.length; ++i) {
      curr = _conversion[data[i]]!;

      if (curr > prev) {
        result += curr - 2 * prev;
      } else {
        result += curr;
      }

      prev = curr;
    }
    return result;
  }
}
