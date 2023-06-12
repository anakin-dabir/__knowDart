void main() {
  //__For, ForEach(doesn't return anything)
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  var arr = [1, 2, 3, 4, 5];
  arr.forEach(print);
  arr.forEach((element) {
    print(element);
  });

  //__If-Case (matching patterns)
  var obj = [1, 2];
  if (obj case [int a, int b]) {
    print('$a and $b');
  }
  // same as
  // if (obj is List<int> && obj.length == 2) {
  //   print('${obj[0]} and ${obj[1]}');
  // }

  //__Switch-Expression New Syntax
  /* Switch Expression (jis me switch ko kice variable me assign kiya jaye) 
      or 
     Switch Statement just control flow hai code mein
  */
  var charCode = -23;
  var token =
      switch (charCode) { 99 => 'Great', >= 0 => 'Bad', _ => 'Default' };
  print(token);

  //__Exceptions
  try {
    throw FormatException('Error');
  } on FormatException {
    print('Hehe Error');
  } catch (err) {
    print(err);
  } finally {
    print('Finally...');
  }
}
