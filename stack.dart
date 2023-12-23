void reverseList(List<dynamic> lst) {
  List stack = [];
  for (var item in lst) {
    stack.add(item);
  }
  while (stack.isNotEmpty) {
    print('${stack.removeLast()} ');
  }
}

bool isBalancedParentheses(String s) {
  List stack = [];
  var openingBrackets = '({[';
  var closingBrackets = ')}]';
  var bracketPairs = {')': '(', '}': '{', ']': '['};

  for (var char in s.runes) {
    var charStr = String.fromCharCode(char);
    if (openingBrackets.contains(charStr)) {
      stack.add(charStr);
    } else if (closingBrackets.contains(charStr)) {
      if (stack.isEmpty || stack.removeLast() != bracketPairs[charStr]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

void main() {
  List mylist = [1, 2, 3, 4, 5];

  var expression1 = "{[()()]}";
  var expression2 = "([)]";

  print('Challenge one : Reseved : ');
  reverseList(mylist);
  print('Challenge two : isBalancedParentheses : ');

  print(isBalancedParentheses(expression1));
  print(isBalancedParentheses(expression2));
}
