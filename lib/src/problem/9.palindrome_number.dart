class SolutionV1 {
  bool isPalindrome(int x) =>
      x.toString().split('').reversed.join() == x.toString();
}

class SolutionV2 {
  bool isPalindrome(int x) {
    if (x.isNegative || (x % 10 == 0 && x != 0)) {
      return false;
    }

    var revertedNumber = 0;
    while (x > revertedNumber) {
      revertedNumber *= 10 + x % 10;
      // ignore: parameter_assignments
      x ~/= 10;
    }

    return x == revertedNumber || x == revertedNumber ~/ 10;
  }
}
