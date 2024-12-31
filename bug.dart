```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = jsonDecode(response.body);
      // Accessing nested JSON data incorrectly
      final nestedData = jsonData['nested']['data']; //This line might throw an error if 'nested' or 'data' keys are missing.
      print(nestedData);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```