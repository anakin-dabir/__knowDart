//__Super : refers to parent class

class Teacher {
  String _name = '';
  int _age = 0;

  Teacher(this._name, this._age);
  Teacher.named(String name, int age)
      : _name = name,
        _age = age;

  Teacher.named1(String name, [int age = 9999])
      : _name = name,
        _age = age;

  // Teacher() {
  //   print('Parent...');
  // }
}

class Student extends Teacher {
  int _number = 1;

  Student(String name, int age, this._number) : super(name, age);
  Student.named1(String name, int age, int number)
      : _number = number,
        super.named1(name);

  // Student() {
  //   print('Child... $_number with $_name & $_age');
  // }

  void display() {
    print('Name: $_name, age: $_age, citizenNumber: $_number');
  }
}

void main(List<String> args) {
  var s1 = Student.named1('Mario', 21, 99);
  s1.display();
}
