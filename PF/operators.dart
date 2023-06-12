void main() {
  int a = 5;
  int b = 6;
  double c;
  c = a / b;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a ~/ b); // returning an int result
  print(a / b);
  print(c);
  print(a++);
  print(b--);
  print(++a);
  print(--b);
  print(a == b);
  print(a != b);

  var first = null;
  var second = null;
  print(first == second);

  var a1 = null;
  //__ (??=)
  a1 ??= 123; // assign value iff it is null
  print(a1);

  bool isPublic = false;
  String namee = 'John Doe';
  // ignore: dead_code
  var visibility = isPublic ? namee : 'private';
  print(visibility);

  //__ (?[])
  dynamic li = [null, 1, 2];
  print(li?[0]);
}
