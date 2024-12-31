```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Safely access nested JSON data using conditional member access
      final nestedData = jsonData['nested']?['data']; 
      if(nestedData != null){
        print(nestedData);
      } else{
        print("Nested data not found");
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```