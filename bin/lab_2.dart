void evenNumber(a, b) {
  for (int i = a; i <= b; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

int sum(int x) {
  int sum = 0;
  while (x > 0) {
    sum += x % 10;
    x = (x ~/ 10);
  }
  return sum;
}

int counter(int y) {
  int count = 0;
  while (y > 0) {
    y = y ~/ 10;
    count++;
  }
  return count;
}

int maxInThisNumber(int n) {
  List<int> arr = [];
  while (n > 0) {
    arr.add(n % 10);
    n = (n ~/ 10);
  }
  int max = arr.first;

  for (int i = 0; i < arr.length; i++) {
    if (max < arr[i]) {
      int temp = max;
      max = arr[i];
      arr[i] = temp;
    }
  }
  return max;
}

int fib(int f) {
  if (f == 0) {
    return 0;
  } else if (f == 1) {
    return 1;
  }
  return fib(f - 1) + fib(f - 2);
}

void method() {
  mult(a, b) => a * b;
  int c = mult(12, 12);
  print("a * b = $c");
}

void methodMax() {
  // ignore: prefer_function_declarations_over_variables
  Function max = (int a, int b) {
    if (a > b) {
      print("max = $a");
    } else {
      print("Max = $b");
    }
  };
  print(max(15, 4));
}

void main() {
  evenNumber(1, 9);
  int x = sum(91);
  print("the sum of digits 91 is: $x");
  int y = counter(9000000);
  print("the number of digits in 9000000 is: $y");
  int n = maxInThisNumber(9031);
  print("the largest digit in 9031 is: $n");
  int f = fib(10);
  print("fibonacci number 10 is: $f");
  method();
  methodMax();
}
