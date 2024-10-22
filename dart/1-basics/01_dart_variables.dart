/**
 *
 * Variables in Dart
 *
 * Dart supports three types of variables:
 *   var: It can hold any type and the type is inferred at runtime.
 *   final: Once assigned, its value cannot be changed (similar to val in Kotlin).
 *   const: Similar to final, but it must be assigned a compile-time constant
 *
 */
void main() {
  int x = 10;
  double d = 1.5;
  x = 20;

  final y = 9;
  // y = 7; -> error

  const z = 100;
  // z = 200; -> error

  var t = 123;
  String text = "This is a string";
  String text2 = "This is a string";

  print("X = $x");
  print("D = $d");

  print("text == text2? => ${text == text2}");
}