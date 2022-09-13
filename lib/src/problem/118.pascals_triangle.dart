/*
 * Given an integer numRows, return the first numRows of Pascal's triangle.
 *                                                                         
 * In Pascal's triangle, each number is the sum of the two numbers directly
 * above it as shown:                                                      
 *                                                                         
 * Example 1:                                                              
 *                                                                         
 * Input: numRows = 5                                                      
 * Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]    
 *                    
 * Example 2:                                                              
 *                                                                         
 * Input: numRows = 1                                                      
 * Output: [[1]]                                                           
 *                                                                         
 * Constraints:                                                            
 *                                                                         
 * 1 <= numRows <= 30                                                      
 */

class SolutionV1 {
  List<List<int>> generate(int numRows) =>
      _generateRows().take(numRows).map((e) => e.toList()).toList();

  Iterable<Iterable<int>> _generateRows() sync* {
    yield const [1];
    yield* _recursive();
  }

  Iterable<Iterable<int>> _recursive([
    final Iterable<int> prevRow = const [1],
  ]) sync* {
    final newRow = _generateNewRow(prevRow);
    yield newRow;
    yield* _recursive(newRow);
  }

  Iterable<int> _generateNewRow(
    final Iterable<int> prevRow,
  ) sync* {
    yield 1;

    final iter = prevRow.iterator..moveNext();
    var first = iter.current;

    while (iter.moveNext()) {
      final second = iter.current;
      yield first + second;
      first = second;
    }

    yield 1;
  }
}

class SolutionV3 {
  List<List<int>> generate(int numRows) =>
      _generateRows().take(numRows).toList();

  Iterable<List<int>> _generateRows([
    final List<int> prevRow = const [],
  ]) sync* {
    final newRow = _generateNewRow(prevRow);
    yield newRow;
    yield* _generateRows(newRow);
  }

  List<int> _generateNewRow(List<int> prevRow) {
    return [1] +
        List.generate(
          prevRow.length,
          (index) => prevRow
              .skip(index)
              .take(2)
              .reduce((first, second) => first + second),
        );
  }
}

class SolutionV2 {
  List<List<int>> generate(int numRows) {
    final rows = [
      [1],
      [1, 1]
    ];

    if (numRows == 1) return rows.take(1).toList();

    for (var i = 1; i < numRows - 1; ++i) {
      final newRow = [1];
      for (var j = 0; j < i; ++j) {
        newRow.add(rows[i][j] + rows[i][j + 1]);
      }
      rows.add(newRow + [1]);
    }

    return rows;
  }
}
