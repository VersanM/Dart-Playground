/**
 * Control Flow in Dart
 *
 * Dart supports the following control flow statements:
 *   if-else
 *   switch-case
 *
 */
void main() {
  int age = 18;
  if (age >= 18) {
    print("You are an adult");
  } else {
    print("You are a minor");
  }

  String grade = "A";
  print("Switch-case example:");
  switch (grade) {
    case "A":
      print("Excellent");
    case "B":
      print("Good");
    case "C":
      print("Average");
    default:
      print("Failed");
  }

  print("Switch with multiple cases:");
  switch (grade) {
    case "A":
    case "B":
    case "C":
      print("Passed");
    default:
      print("Failed");
  }

  print("Switch with continue:");
  switch (grade) {
    case "A":
      print("Excellent");
      continue next;
    case "B":
      print("Good");
      continue next;
    case "C":
      print("Average");
      continue next;
    next:
    default:
      print("Failed");
  }

  var gradeName = switch (grade) {
    "A" => "Excellent",
    "B" => "Good",
    "C" => "Average",
    _ => "Unknown",
  };
  print("Grade name = $gradeName");

  // Ternary operator
  int x = 10;
  int y = 20;
  int max = x > y ? x : y;

  print("Max = $max");
}