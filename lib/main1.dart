import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VehicleInfoPage(),
    );
  }
}

class VehicleInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vehicle Information',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: TextStyle(
                fontSize: 24,
                color: Colors.lightGreen,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/car.jpg',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 16, bottom: 8),
              child: Text(
                'Car Name',
                style: TextStyle(fontSize: 15),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Mercedes-BMW',
                contentPadding: EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 8),
              child: Text(
                'Model',
                style: TextStyle(fontSize: 15),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'BB XXX XXX XXX',
                contentPadding: EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 8),
              child: Text(
                'Number Plate',
                style: TextStyle(fontSize: 15),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Type',
                contentPadding: EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 8),
              child: Text(
                'Color',
                style: TextStyle(fontSize: 15),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Green',
                contentPadding: EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Checkbox(value: false, onChanged: (bool? value) {}),
                Text('Air Condition'),
                SizedBox(width: 20),
                Checkbox(value: true, onChanged: (bool? value) {}),
                Text('Heater'),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(14),
              ),
              child: Text('Update', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
