//__Functions

// __Params
int sum(int a, int b) {
  return a + b;
}

int sum1(int a, int b) => a + b;

//__Anonymous Functions
var sum2 = (int a, int b) => a + b;

var sum3 = (int a, int b) {
  return a + b;
};

//__Named Params
var sum4 = ({int a = 0, required int b}) => a + b;

//__Optional Positional Params
var sum5 = (int a, [int b = 0]) => a + b;

Function sum6(int a) {
  return (int b) => a + b;
}

void main() {
  print('sum: ${sum(1, 2)}');
  print('sum1: ${sum1(1, 2)}');
  print('sum2: ${sum2(1, 2)}');
  print('sum3: ${sum3(1, 2)}');
  print('sum4: ${sum4(b: 1)}');
  print('sum5: ${sum5(1)}');
  var sum7 = sum6(66);
  print('sum6: ${sum7(99)}');
}
