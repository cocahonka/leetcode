class Solution {
  List<String> fizzBuzz(int n) => List.generate(
        n,
        (i) => (++i % 3 == 0 && i % 5 == 0)
            ? 'FizzBuzz'
            : (i % 3 == 0)
                ? 'Fizz'
                : (i % 5 == 0)
                    ? 'Buzz'
                    : '$i',
      );
}
