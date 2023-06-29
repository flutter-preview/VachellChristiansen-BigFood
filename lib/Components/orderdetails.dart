import 'package:flutter/material.dart';

void main() {
  runApp(OrderDetail());
}

class OrderDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderDetaill(),
    );
  }
}

class OrderDetaill extends StatelessWidget {
  const OrderDetaill({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Find Your \nFavorite Food',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white, // Set text color here
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200], // Set background color here
                        hintText: "Search For Food",
                        hintStyle: TextStyle(
                          color: Colors.grey, // Set hint text color here
                        ),
                        prefixIcon: Icon(Icons.search, color: Colors.grey), // Set the color of the search icon
                        suffixIcon: GestureDetector(
                          onTap: () {
                            // Add the functionality for the settings icon here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SettingsPage()),
                            );
                          },
                          child: Icon(Icons.settings),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  GestureDetector(
                          onTap: () {
                            // Add the functionality for the settings icon here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SettingsPage()),
                            );
                          },
                          child: Icon(Icons.notifications),
                        ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            DropdownButton<String>(
              value: 'Option 1                                                                                                                 ',
              onChanged: (String? newValue) {},
              items: <String>[
                'Option 1                                                                                                                 ',
                'Option 2',
                'Option 3',
                'Option 4'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(color: Colors.black), // Text color
              dropdownColor: Colors.grey[200], // Background color
              underline: Container(), // Remove default underline
            ),
            DropdownButton<String>(
              value: 'Option 1                                                                                                                 ',
              onChanged: (String? newValue) {},
              items: <String>[
                'Option 1                                                                                                                 ',
                'Option 2',
                'Option 3',
                'Option 4'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(color: Colors.black), // Text color
              dropdownColor: const Color.fromRGBO(238, 238, 238, 1), // Background color
              underline: Container(), // Remove default underline
            ),
            DropdownButton<String>(
              value: 'Option 1                                                                                                                 ',
              onChanged: (String? newValue) {},
              items: <String>[
                'Option 1                                                                                                                 ',
                'Option 2',
                'Option 3',
                'Option 4'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(color: Colors.black), // Text color
              dropdownColor: Colors.grey[200], // Background color
              underline: Container(), // Remove default underline
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Text("This is the Settings Page"),
      ),
    );
  }
}
