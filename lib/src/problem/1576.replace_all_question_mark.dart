/*
 * Given a string s containing only lowercase English letters and the '?'
 * character, convert all the '?' characters into lowercase letters such that 
 * the final string does not contain any consecutive repeating characters. 
 * You cannot modify the non '?' characters.
 *
 * It is guaranteed that there are no consecutive repeating characters in the
 * given string except for '?'.
 *
 * Return the final string after all the conversions (possibly zero) have 
 * been made. If there is more than one solution, return any of them. 
 * It can be shown that an answer is always possible with the given constraints.
 *
 *
 *
 * Example 1:
 *
 * Input: s = "?zs"
 * Output: "azs"
 * 
 * Explanation: There are 25 solutions for this problem. From "azs" to "yzs",
 * all are valid. Only "z" is an invalid modification as the string will 
 * consist of consecutive repeating characters in "zzs".
 * Example 2:
 *
 * Input: s = "ubv?w"
 * Output: "ubvaw"
 * 
 * Explanation: There are 24 solutions for this problem. Only "v" and "w" are 
 * invalid modifications as the strings will consist of consecutive repeating 
 * characters in "ubvvw" and "ubvww".
 *
 *
 * Constraints:
 *
 * 1 <= s.length <= 100
 * s consist of lowercase English letters and '?'.
 */

class SolutionV1 {
  String modifyString(final String raw) {
    final freeChars = _generateAlphabet();

    return raw.replaceAllMapped(RegExp(r'(\w)?(\?+)(\w)?'), (match) {
      var forbiddenChars = match.group(0)!;
      for (var i = 0; i < match.group(2)!.length; ++i) {
        forbiddenChars = forbiddenChars.replaceFirst(
          '?',
          freeChars.firstWhere(
            (char) => !forbiddenChars.contains(char),
          ),
        );
      }
      return forbiddenChars;
    });
  }

  Iterable<String> _generateAlphabet([
    final String start = 'a',
    final String end = 'z',
  ]) sync* {
    final first = start.codeUnitAt(0);
    final last = end.codeUnitAt(0);
    for (var curr = first; curr < last; ++curr) {
      yield String.fromCharCode(curr);
    }
  }
}

class SolutionV2 {
  String modifyString(final String raw) {
    var clean = raw;
    for (var i = 0; i < clean.length; ++i) {
      if (clean[i] == '?') {
        final prevChar = (i > 0) ? clean[i - 1] : '';
        final nextChar = (i < raw.length - 1) ? clean[i + 1] : '';
        clean = clean.replaceFirst(
          '?',
          _generateValidChar([prevChar, nextChar]),
          i,
        );
      }
    }
    return clean;
  }

  String _generateValidChar(List<String> forbidden) {
    return _generateAlphabet().firstWhere((char) => !forbidden.contains(char));
  }

  Iterable<String> _generateAlphabet([
    final String start = 'a',
    final String end = 'z',
  ]) sync* {
    final first = start.codeUnitAt(0);
    final last = end.codeUnitAt(0);
    for (var curr = first; curr < last; ++curr) {
      yield String.fromCharCode(curr);
    }
  }
}
