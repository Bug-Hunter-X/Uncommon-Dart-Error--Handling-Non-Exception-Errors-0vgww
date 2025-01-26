```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    await Future.delayed(Duration(seconds: 2));
    if (DateTime.now().millisecondsSinceEpoch % 2 == 0) {
      throw 'Simulated non-exception error';
    }
    print('Data fetched successfully!');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
  } on FormatException catch (e){
    print('Format error: $e');
  } on Exception catch (e) {
    print('Exception caught: $e');
  } catch (e) {
    // Improve error handling by checking the type of the error
    print('Unexpected error: $e.  Error type: ${e.runtimeType}'); 
  }
}

void main() async {
  await fetchData();
}
```