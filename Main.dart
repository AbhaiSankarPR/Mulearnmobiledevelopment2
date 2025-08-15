import 'dart:io';

void main() {
  while (true) {
    // Display menu options
    print("\n===== BasiCulator =====");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Greater than");
    print("6. Less than");
    print("7. Equal to");
    print("8. Exit");

    // Ask user to choose an option
    stdout.write("Choose an option (1-8): ");
    String? choice = stdin.readLineSync();

    // Exit if user chooses 8
    if (choice == '8') {
      print("Exiting BasiCulator... Goodbye!");
      break;
    }

    // Ask user for first number
    stdout.write("Enter first number: ");
    double num1 = double.parse(stdin.readLineSync()!);

    // Ask user for second number
    stdout.write("Enter second number: ");
    double num2 = double.parse(stdin.readLineSync()!);

    // Perform action based on user choice
    switch (choice) {
      case '1': // Addition
        print("Result: ${num1 + num2}");
        break;
      case '2': // Subtraction
        print("Result: ${num1 - num2}");
        break;
      case '3': // Multiplication
        print("Result: ${num1 * num2}");
        break;
      case '4': // Division
        if (num2 == 0) {
          print("Error: Division by zero is not allowed.");
        } else {
          print("Result: ${num1 / num2}");
        }
        break;
      case '5': // Greater than comparison
        print(num1 > num2
            ? "$num1 is greater than $num2"
            : "$num1 is not greater than $num2");
        break;
      case '6': // Less than comparison
        print(num1 < num2
            ? "$num1 is less than $num2"
            : "$num1 is not less than $num2");
        break;
      case '7': // Equality comparison
        print(num1 == num2
            ? "$num1 is equal to $num2"
            : "$num1 is not equal to $num2");
        break;
      default: // Invalid choice
        print("Invalid choice. Please select from 1 to 8.");
    }
  }
}
