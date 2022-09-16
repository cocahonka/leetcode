// ignore_for_file: parameter_assignments

/*
 * Given the head of a singly linked list, return the middle node of the 
 * linked list.
 *
 * If there are two middle nodes, return the second middle node.
 *
 *
 *
 * Example 1:
 *
 * Input: head = [1,2,3,4,5]
 * Output: [3,4,5]
 * Explanation: The middle node of the list is node 3.
 *
 * Example 2:
 *
 * Input: head = [1,2,3,4,5,6]
 * Output: [4,5,6]
 * Explanation: Since the list has two middle nodes with values 3 and 4, we 
 * return the second one.
 *
 *
 * Constraints:
 *
 * The number of nodes in the list is in the range [1, 100].
 * 1 <= Node.val <= 100
 */

import 'package:equatable/equatable.dart';

// Definition for singly-linked list.
// ignore: must_be_immutable
class ListNode extends Equatable {
  ListNode([this.val = 0, this.next]);
  int val;
  ListNode? next;

  @override
  List<Object?> get props => [val, next];
}

class SolutionV1 {
  ListNode? middleNode(ListNode? head) {
    late final ListNode middle;

    int mountMiddleNode(ListNode? node, [int index = 0]) {
      if (node == null) return index;
      final nodeLength = mountMiddleNode(node.next, index + 1);
      if (index == nodeLength ~/ 2) middle = node;
      return nodeLength;
    }

    mountMiddleNode(head);

    return middle;
  }
}

class SolutionV2 {
  ListNode? middleNode(ListNode? head) {
    var nodeLength = 0;
    for (var node = head; node != null; node = node.next) {
      ++nodeLength;
    }

    var middleNode = head;
    for (var index = 0; index != nodeLength ~/ 2; index++) {
      middleNode = middleNode?.next;
    }

    return middleNode;
  }
}

class SolutionV3 {
  ListNode? middleNode(ListNode? head) {
    for (var doubleMover = head;
        doubleMover != null && doubleMover.next != null;
        doubleMover = doubleMover.next?.next, head = head?.next) {}
    return head;
  }
}

class SolutionV4 {
  ListNode? middleNode(ListNode? head) {
    final cache = <ListNode?>[];
    var nodeLength = 0;
    for (var node = head; node != null; node = node.next) {
      cache.add(node);
      ++nodeLength;
    }
    return cache[nodeLength ~/ 2];
  }
}
