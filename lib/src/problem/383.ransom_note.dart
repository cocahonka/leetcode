/*
 * Given two strings ransomNote and magazine, return true if ransomNote can be
 * constructed by using the letters from magazine and false otherwise.
 *
 * Each letter in magazine can only be used once in ransomNote.
 *
 *
 *
 * Example 1:
 *
 * Input: ransomNote = "a", magazine = "b"
 * Output: false
 * 
 * Example 2:
 *
 * Input: ransomNote = "aa", magazine = "ab"
 * Output: false
 * 
 * Example 3:
 *
 * Input: ransomNote = "aa", magazine = "aab"
 * Output: true
 *
 * Constraints:
 *
 * 1 <= ransomNote.length, magazine.length <= 105
 * ransomNote and magazine consist of lowercase English letters.
 */

class SolutionV1 {
  bool canConstruct(String ransomNote, String magazine) {
    final ransomLetters = ransomNote.split('');
    final magazineLetters = magazine.split('');
    for (final letter in ransomLetters) {
      if (!magazineLetters.remove(letter)) return false;
    }
    return true;
  }
}

class SolutionV2 {
  bool canConstruct(String ransomNote, String magazine) {
    final ransomCounts = countLetters(ransomNote);
    final magazineCounts = countLetters(magazine);

    for (final letter in ransomNote.split('')) {
      if (ransomCounts[letter]! > (magazineCounts[letter] ?? 0)) return false;
    }

    return true;
  }

  Map<String, int> countLetters(String phrase) {
    final result = <String, int>{};
    for (final letter in phrase.split('')) {
      final count = result[letter];
      result[letter] = (count ?? 0) + 1;
    }
    return result;
  }
}
