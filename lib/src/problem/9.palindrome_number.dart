class SolutionV1 {
  bool isPalindrome(int x) =>
      x.toString().split('').reversed.join() == x.toString();
}

class SolutionV2 {
  bool isPalindrome(int x) {
    if (x.isNegative || (x % 10 == 0 && x != 0)) {
      return false;
    }

    var leftSide = x;
    var rightSide = 0;
    while (leftSide > rightSide) {
      rightSide = rightSide * 10 + leftSide % 10;
      leftSide ~/= 10;
    }

    return leftSide == rightSide || leftSide == rightSide ~/ 10;
  }
}
