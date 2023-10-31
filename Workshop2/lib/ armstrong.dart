import 'dart:math';

bool isArmstrongNumber(int number) {
  int originalNumber = number;
  int numDigits = number.toString().length;
  int sum = 0;

  while (number > 0) {
    int digit = number % 10;
    sum += pow(digit, numDigits).toInt();
    number ~/= 10;
  }

  return sum == originalNumber;
}

void main() {
  for (int i = 1; i <= 1000; i++) {
    if (isArmstrongNumber(i)) {
      print('$i is an Armstrong number.');
    }
  }
}
