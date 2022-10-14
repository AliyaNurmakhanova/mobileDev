// 1.	Реализуйте класс для стека целых чисел с использованием массива. Обратите внимание,
// что операции, определенные для структуры данных стека, следующие: “push – добавляет один элемент с конца”,
// “pop – удаляет один элемент с конца”, “print – печатает все элементы массива”.
class Stack<stack> {
  Stack() : _storage = <stack>[];
  final List<stack> _storage;

  @override
  String toString() {
    return _storage.reversed.join('\n');
  }

  void push(stack element) => _storage.add(element);
  stack pop() => _storage.removeLast();
}

void main() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.pop();
  stack.push(4);
  print(stack);

  final element = stack.pop();
  print('Popped element is $element');
}
