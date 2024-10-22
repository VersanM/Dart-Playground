/**
 * Dart loops
 *
 * Dart has the typical loop structures:
 *
 *   for loop: Iterates over a range or collection.
 *   while loop: Repeats as long as a condition is true.
 *   do-while loop: Executes at least once, then checks the condition.
 */
void main() {
  // while loop
  int i = 0;
  while (i < 5) {
    print("While loop: $i");
    i++;
  }
  // prints: 0, 1, 2, 3, 4

  // do-while loop
  int j = 0;
  do {
    print("Do-while loop: $j");
    j++;
  } while (j < 5);
  // prints: 0, 1, 2, 3, 4

  // for loop
  for (int k = 0; k < 5; k++) {
    print("For loop: $k");
  }
  // prints: 0, 1, 2, 3, 4

  for (int l in [1, 2, 3, 4, 5]) {
    print("For-in loop: $l");
  }
  // prints: 1, 2, 3, 4, 5

  List<String> fruits = ['apple', 'banana', 'cherry'];
  for (var fruit in fruits) {
    print(fruit);
    if (fruit == 'banana') {
      break;
    }
  }
  // prints: apple, banana

  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) {
    print(number);
    if (number == 3) {
      return; // this won't work in the forEach loop
    }
  });
  // prints: 1, 2, 3, 4, 5
}