```dart
import 'dart:async';

Future<void> fetchData() async {
  // Simulate an asynchronous operation that might throw an exception
  try {
    await Future.delayed(Duration(seconds: 2));
    // Simulate an error condition that is not a standard exception
    if (DateTime.now().millisecondsSinceEpoch % 2 == 0) {
      throw 'Simulated non-exception error';
    }
    print('Data fetched successfully!');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
  } on Exception catch (e) {
    print('Exception caught: $e');
  } catch (e) {
    print('Unexpected error: $e'); // This will catch the 'Simulated non-exception error'
  }
}

void main() async {
  await fetchData();
}
```