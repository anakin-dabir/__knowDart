//__Polymorphism
class A {
  void display() {
    print('A...');
  }
}

class B extends A {
  void display() {
    print('B...');
  }
}

//__Abstraction : extends me hamesha inheritance ki properties follow hotin (we can inherit only one class at a time, phly parent constructor then child constructor)
//__Interface : implements (ek se zyada parent class implement, interface k methods ko define krna hota, parent kabhi initialize hi nahi hota)
abstract class C {
  start();
  stop();
  C() {
    print('C Constructor...');
  }
}

class D extends C {
  @override
  void start() {
    print('Start');
  }

  @override
  void stop() {
    print('Stop');
  }

  D() {
    print('D Constructor...');
  }
}

class E implements C, D {
  @override
  void start() {
    print('E Starting...');
  }

  @override
  void stop() {
    print('E Stopping...');
  }

  E() {
    print('E constructor...');
  }
}

void main(List<String> args) {
  B b = B();
  b.display();
  A a = A();
  a.display();

  D d = D();
  // : We can't make object of abstract class (abstract class can't be initialized)
  d.start();
  d.stop();

  E e = E();
  e.start();
  e.stop();
}
