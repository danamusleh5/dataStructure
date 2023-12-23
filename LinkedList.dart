class ListNode {
  dynamic data;
  ListNode? next;
  ListNode(this.data);
}

void printListInReverse(ListNode? head) {
  List<dynamic> stack = [];
  while (head != null) {
    stack.add(head.data);
    head = head.next;
  }
  while (stack.isNotEmpty) {
    print('${stack.removeLast()} ');
  }
}

ListNode? findMiddleNode(ListNode? head) {
  if (head == null) return null;

  ListNode? slow = head;
  ListNode? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

ListNode? reverseLinkedList(ListNode? head) {
  ListNode? p = null;
  ListNode? current = head;
  ListNode? nextNode;

  while (current != null) {
    nextNode = current.next;
    current.next = p;
    p = current;
    current = nextNode;
  }

  return p;
}

void main() {
  ListNode head = ListNode(1)
    ..next = ListNode(2)
    ..next!.next = ListNode(3)
    ..next!.next!.next = ListNode(4);

  //Challenge  # one
  print('ReservedList Printed : ');
  printListInReverse(head);

  //Challenge  # two
  print('The Middle Node is : ');
  ListNode? middleNode = findMiddleNode(head);
  print(middleNode?.data); // Output: 3

  //Challenge  # three
  print('ReservedList  : ');
  ListNode? reversedHead = reverseLinkedList(head);
  while (reversedHead != null) {
    print('${reversedHead.data} ');
    reversedHead = reversedHead.next;

    //Challenge   # four
    //   print('The List after removing : ');
//       head = removeAllOccurrences(head, 2);
//   printList(head);
  }
}
