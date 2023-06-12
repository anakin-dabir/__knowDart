(int, int) swap((int, int) param) {
  var (a, b) = param;
  return (b, a);
}

void main() {
  //__Records (Tuple: simple '()' k andr diferent objects store kr skta ye)

  (int, int) a = (1, 5);
  print(swap(a));

  ({String name, int age}) b = (name: 'Anakin', age: 20);
  print(b);
}
