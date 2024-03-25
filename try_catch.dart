void main() {
  try {
    int result = 5 ~/ 0; 
    print('Result: $result'); 
  } catch (e) {
    print('An error occurred: $e');
  }
}
