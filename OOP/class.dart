// __Encapsulation in dart is with _variable : but within library (whole .dart file: library contains classes & functions)

class Teacher {
  String _name = '';
  int _age = 0;
  static int count = 0;

  //__One Line Constructor
  //Teacher(this._name, this._age);
  //__Default Construtor
  Teacher() {
    print('__Default Constructor');
    count++;
  }

  //__Named Constructors
  Teacher.namedConstructor(String name, int age) {
    print('__Parametrized constructor');
    this._name = name;
    this._age = age;
    count++;
  }
  Teacher.namedConstructor1(String name, int age)
      : _name = name,
        _age = age;

  Teacher.namedConstructor2([String name = '', int age = 0])
      : _name = name,
        _age = age;

  Teacher.namedConstructor3({String name = '', int age = 0})
      : _name = name,
        _age = age;

  //__Const Constructors: that makes class const with 'final' elements
  //const Teacher(){};

  //__getters() &  setters()
  String get name => _name;
  int get age => _age;

  set name(String name) => this._name = name;
  set age(int age) => _age = age;
}

void main() {
  var t1 = Teacher.namedConstructor('Talha', 20);
  print((t1.name = 'anakin', t1.age = 30));
  print(t1.name = 'munna');
  print(Teacher.count);
}
