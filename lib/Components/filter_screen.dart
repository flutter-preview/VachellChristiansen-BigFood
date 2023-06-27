import 'package:flutter/material.dart';

void main() {
  runApp(FilterScreenPage());
}

class FilterScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilterScreen(),
    );
  }
}

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0),
            Text(
              'Find Your \nFavorite Food',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search For Food",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.settings),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Icon(Icons.notifications),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            DropdownButton<String>(
  value: 'Option 1',
  onChanged: (String? newValue) {},
  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
),
SizedBox(height: 10.0),
DropdownButton<String>(
  value: 'Option A',
  onChanged: (String? newValue) {},
  items: <String>['Option A', 'Option B', 'Option C', 'Option D']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
),
SizedBox(height: 10.0),
DropdownButton<String>(
  value: 'Option X',
  onChanged: (String? newValue) {},
  items: <String>['Option X', 'Option Y', 'Option Z']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
),
          ],
        ),
      ),
    );
  }
}
