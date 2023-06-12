late int
    aa; // Top level variables declared late to be initialized late otherwise it shows error

void main() {
  //__var
  var name = 'anakin';
  var age = 20;
  var arr = [1, 2, 3, 4, 5];
  var obj = {'name': 'mario', 'age': 20};
  //name = 43 --> value of type int can't be assigned to variable of type String
  print([
    name,
    age,
    arr,
    obj
  ]); // ye variables hai jin me koi b type aa sakti but ek ko doosri me convert nai kia jaa skta

  //__int, double
  int a = 1;
  double b = 12.3;
  print({a, b});

  //__String
  String mane = 'anakin';
  print(mane);

  //__List (array)
  List c = [1, 2, 3, 4, 5]; // List of object type/dynamic
  List<int> d = [1, 2, 3, 4, 5]; // List of int type
  print([c, d]);

  //__Map (Obj)
  Map e = {'name': 'anakin', 'age': 23};
  Map<String, String> f = {'name': 'anakin', 'age': '23'}; //explicitly typed
  print(e);
  print(f);

  //__Set
  Set<int> ad = {1, 2, 3, 5};
  print(ad);

  //__Dynamic (it reffered to anyDataType & can be reassigned to other type opposing 'var')
  dynamic abc = 'anakin';
  Object abcd = 123;
  abc = 1;
  print({abc, abcd});

  //__Null Safety
  String? eea; // nullable type
  print(eea);
  // String ee --> yani ye is wat null hai but iski type non-nullable hai
  // print(ee) --> The non-nullable local variable 'ee' must be assigned before it can be used.
  dynamic az = 1;
  az = null;
  print(az);

  //__Late
  aa = 1;
  print(aa);

  //__Final, const
  final int l; // final only be assigned once
  const String bk = 'asd'; // The constant must be initialized..
  l = 123;
  const List<int>? anz = [1, 2, 3, 4];
  // anz[0] = 99 --> Cannot modify an unmodifiable list (Run-Time Error), but agr final hoti list to hm kr skty thay
  print({l, bk, anz});
}
