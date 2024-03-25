import 'dart:io';

void main() {
  print('Enter a list of numbers separated by spaces:');
  String input = stdin.readLineSync()!;
  List<String> numberStrings = input.split(' ');
  List<int> numbers = numberStrings.map(int.parse).toList();

  int largestNumber = findLargestNumber(numbers);
  print('The largest number is: $largestNumber');
}

int findLargestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list cannot be empty.');
  }

  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}
