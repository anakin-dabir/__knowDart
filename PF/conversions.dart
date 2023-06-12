void main() {
  //__ String to int,double
  String n = '1.2';
  String m = '1';

  print(double.parse(n));
  print(int.parse(m));

  //__ Int,double to String
  int a = 9;
  double b = 9.9915;
  print(a.toString());
  print(b.toStringAsPrecision(4));
  print(b.toStringAsFixed(4));
  print(b.toStringAsExponential(2));
  print('This is the game of $n players');
  print(#abc);
  var result = (a, b, m, n);
  print(result);
}
