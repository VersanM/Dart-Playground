/**
 * 1. Temperature Converter
    Write a Dart function that converts temperature from Celsius to Fahrenheit and Fahrenheit to Celsius based on user input.

    Formula:
    Celsius to Fahrenheit: (°C × 9/5) + 32 = °F
    Fahrenheit to Celsius: (°F − 32) × 5/9 = °C
    Input: The temperature and a choice (C to F, or F to C).
    Output: The converted temperature.
 */
double temperatureConverter(double temperature, String scale) {
  switch (scale.toLowerCase()) {
    case 'c to f':
      return temperature * 9 / 5 + 32;
    case 'f to c':
      return (temperature - 32) * 5 / 9;
    default:
      throw Exception("Wrong scale");
  }
}

/**
 * 2. Sum of Natural Numbers
    Write a Dart program that calculates the sum of all natural numbers from 1 to a given number n.

    Input: A positive integer n.
    Output: The sum of numbers from 1 to n.
 */
int sumUntil(int limit) {
  var sum = 0;
  var index = 1;

  while (index <= limit) {
    sum += index;
    index++;
  }

  return sum;
}

/**
 * 3. Palindrome Checker
    Write a Dart program that checks if a given string is a palindrome.

    A palindrome is a word that reads the same forwards and backwards (e.g., "racecar", "madam").
    Input: A string.
    Output: true if it's a palindrome, otherwise false.
 */
bool isPalindrome(String text) {
  String reversedText = "";
  for (int i = text.length - 1; i >= 0; i--) {
    reversedText += text[i];
  }
  return text == reversedText;
}

/**
 * 4. Multiplication Table
    Write a Dart function that prints the multiplication table for a given number n up to 10.

    Input: A positive integer n.
    Output: The multiplication table of n.
 */
void printMultiplicationTable(int num) {
  if (num < 0 || num > 10) {
    print("Number not supported");
    return;
  }

  for (int i = 0; i <= 10; i++) {
    print("$num x $i = ${num * i}");
  }
}

/**
 * 5. Prime Number Generator
    Write a Dart function that prints all prime numbers up to a given number n.

    A prime number is a number greater than 1 that has no divisors other than 1 and itself.
    Input: A positive integer n.
    Output: A list of all prime numbers up to n.
 */
bool isPrimeNumber(int num) {
  for (int i = 2; i <= num/2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

void printPrimeNumbersUntil(int limit) {
  for (int i = 2; i <= limit; i++) {
    if (isPrimeNumber(i)) {
      print(i);
    }
  }
}

/**
 * 6. Fibonacci Sequence
    Write a Dart function that prints the first n numbers of the Fibonacci sequence.

    The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two.
    Input: A positive integer n.
    Output: The first n numbers in the Fibonacci sequence.
 */
List<int> fibonacci(int num) {
  if (num < 1) {
    return [];
  } else if (num == 1) {
    return [0];
  } else if (num == 2) {
    return [0,1];
  }

  var x = 0;
  var y = 1;
  final result = [0, 1];

  for (int i = 3; i <= num; i++) {
    final sum = x + y;
    result.add(sum);
    x = y;
    y = sum;
  }
  return result;
}

void main() {
  // Temperature converter
  double temp1 = temperatureConverter(30, "C to F");
  double temp2 = temperatureConverter(70, "F to C");
  print("temp1 = $temp1");
  print("temp2 = $temp2");
  try {
    double temp3 = temperatureConverter(45, "CF");
    print("temp3 = $temp3");
  } catch (e) {
    print("Exception: $e");
  }

  // Sum until
  int sum = sumUntil(100);
  print("Sum of numbers from 1 to 100 = $sum");

  // Palindrome
  bool thisIsPalindrome = isPalindrome("racecar");
  bool thisIsNotPalindrome = isPalindrome("some random text");
  print("Races is a palindrome? => $thisIsPalindrome");
  print("\"some random text\" is a palindrome? => $thisIsNotPalindrome");

  // Multiplication table
  printMultiplicationTable(14);
  printMultiplicationTable(8);

  // Print all prime numbers until limit
  printPrimeNumbersUntil(20);

  // Fibonacci
  print(fibonacci(6));
}
