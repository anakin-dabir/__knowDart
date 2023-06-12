void main() {
  //__Switch
  var obj = ['3', '2'];
  switch (obj) {
    case ['1', '2']:
      print('${obj[0]}, ${obj[1]}');
  }

  //__Destructuring
  var arr = [1, 2];
  var [a, b] = arr;
  print((a, b));
  switch (arr) {
    case [1, var c]:
      print(c);
  }

  var (name: name, age: age) = (name: 'string', age: 1);
  print((name, age));
}
