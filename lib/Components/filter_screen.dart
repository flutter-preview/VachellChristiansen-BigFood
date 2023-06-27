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
                        hintText: "Search...",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
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
            // Add more widgets here...
          ],
        ),
      ),
    );
  }
}
