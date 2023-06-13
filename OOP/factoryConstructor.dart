//__Factory Constructor: returns instance of class or cached instance of other class

abstract class A {
  A() {
    print('Simple A Constructor...');
  }
  factory A.fct() {
    print('A constructor...');
    return B();
  }
}

class B implements A {
  B() {
    print('B constructor...');
  }
  factory B.fct() {
    return B();
  }
}

//__Caching
class Person {
  final String name;

  Person._internal(this.name);

  static final Map<String, Person> _cache = <String, Person>{};

  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final person = Person._internal(name);
      _cache[name] = person;
      return person;
    }
  }
}

//__Singleton
class Singleton {
  static final Singleton _instance = Singleton._internal();
  factory Singleton() {
    return _instance;
  }
  Singleton._internal();
}

void main(List<String> args) {
  B b = B.fct();
  print(b.hashCode);

  final person1 = Person('John');
  final person2 = Person('Harry');
  final person3 = Person('John');

  // hashcode of person1 and person3 are same due to caching
  print("Person1 name is : ${person1.name} with hashcode ${person1.hashCode}");
  print("Person2 name is : ${person2.name} with hashcode ${person2.hashCode}");
  print("Person3 name is : ${person3.name} with hashcode ${person3.hashCode}");

  Singleton obj1 = Singleton();
  Singleton obj2 = Singleton();
  print(obj1.hashCode);
  print(obj2.hashCode);

  int? m = 88;
  int n = m ?? 6;
  print(n);
}
