void main() {
  //__Collections -> List, Set, Map
  List<int> arr = [1, 2, 3, 4, 5];
  List? arr1 = null;

  //__add(), addAll()
  arr.add(1099);
  arr.addAll([99, 123]);
  print(arr);

  //__Spread Operator
  print([99, ...arr]);
  print([99, ...?arr1]);

  //__Control-Flow Operators (collection if, collection for)
  print([1, 2, for (int i = 0; i < arr.length; i++) i]);
  print([1, 2, for (var i in arr) i]);
  print([99, if (arr1 == null) 'hihi']);
  print([99, if (arr1 != null) 'hihi']);
}
