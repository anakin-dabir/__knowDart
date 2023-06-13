mixin mixin1 {
  void method() {
    print('Mixin here...');
  }
}

class A with mixin1 {}

abstract class B {
  method();
}

mixin mixin2 on B {
  @override
  void method() {
    print('2nd mixin...');
  }
}

class C extends B with mixin2 {}

//__Enums : fixed values like used for selects & options
enum days { Monday, Tuesday, Wednesday, Thrusday, Friday, Saturday, Sunday }

void main(List<String> args) {
  A a = A();
  a.method();

  C c = C();
  c.method();

  days day = days.Friday;
  print(day);

  for (days day in days.values) {
    print('$day');
  }
}
