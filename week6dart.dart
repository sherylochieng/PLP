// Task 1: Create a function that takes two numbers as input and returns the sum of those numbers.
int sum(int a, int b) {
  return a + b;
}

// Task 2: Write a program that uses a for loop to print out the numbers from 1 to 10.
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Task 3: Create a program that uses a switch statement to check for different string values and output a response based on the value.
void printResponse(String value) {
  switch (value) {
    case 'hello':
      print('Hello there!');
      break;
    case 'goodbye':
      print('Goodbye!');
      break;
    default:
      print('Unknown value');
  }
}

// Task 4: Create a program that uses a while loop to print out the numbers from 20 to 10.
void printNumbersDescending() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Task 5: Create a program that uses an if-else statement to check if a number is even or odd and output the result.
void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

// Task 6: Create a program that takes a list of numbers as input and outputs the largest number in the list.
int findLargestNumber(List<int> numbers) {
  int max = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  return max;
}

// Task 7: Write a program that uses a try-catch block to catch an exception and output an error message.
void handleException() {
  try {
    // Some code that may throw an exception
    throw Exception('An error occurred');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  // Task 1: Test the sum function
  print('Task 1:');
  print('Sum of 5 and 3 is ${sum(5, 3)}');
  
  // Task 2: Print numbers from 1 to 10
  print('\nTask 2:');
  printNumbers();
  
  // Task 3: Test the printResponse function
  print('\nTask 3:');
  printResponse('hello');
  printResponse('goodbye');
  printResponse('unknown');
  
  // Task 4: Print numbers from 20 to 10
  print('\nTask 4:');
  printNumbersDescending();
  
  // Task 5: Test the checkEvenOdd function
  print('\nTask 5:');
  checkEvenOdd(7);
  checkEvenOdd(12);
  
  // Task 6: Test the findLargestNumber function
  print('\nTask 6:');
  List<int> numbers = [3, 7, 2, 9, 5];
  print('Largest number in $numbers is ${findLargestNumber(numbers)}');
  
  // Task 7: Test the handleException function
  print('\nTask 7:');
  handleException();
}
