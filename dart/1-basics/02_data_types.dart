/**
 * Dart Data Types
 *
 * Dart has a set of core data types:
 *
 *   int: Integer values (e.g., 1, 100).
 *   double: Floating-point numbers (e.g., 3.14, 99.99).
 *   String: Text (e.g., "Hello").
 *   bool: Boolean values (true or false).
 *   List: A collection of items, equivalent to arrays.
 *
 */
void main() {
  // int
  var x1 = 1;
  final x2 = -1;
  int x3 = 5;
  x1 = x2;
  x3 = x1;

  // double
  double d1 = 3.5;

  // string
  String s = "this is a text";
  int sLength = s.length;

  // bool
  bool b1 = true;
  var b2 = true;
  b2 = !b1;

  // List
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers = [1, 2, 3, 4, 5, 6];
  numbers.add(6);
  numbers.removeAt(0);
  int arrayLength = numbers.length;
  final firstElement = numbers.first;

  final immutableList = [1, 2, 3, 4, 5];
  immutableList.add(6);
  // immutableList = [1, 2, 3, 4, 5, 6]; -> error because it's a final variable

  const constList = [1, 2, 3, 4, 5];
  // constList.add(6); -> error because it's a constant variable

  print("X1 = $x1");
  print("X2 = $x2");
  print("X3 = $x3");

  print("D1 = $d1");

  print("S = $s");
  print("S length = $sLength");

  print("B1 = $b1");
  print("B2 = $b2");

  print("Numbers = $numbers");
  print("Array length = $arrayLength");
  print("First element = $firstElement");

  print("Final list = $immutableList");
  print("Const list = $constList");
}