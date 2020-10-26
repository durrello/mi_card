import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Card'),
      ),
      body: Container(
        child: Column(
          children: [
            CircleAvatar(
              child: Image.asset('image link'),
            ),
            Text('Da Suspect'),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('xxx-xxx-xxx'),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('dasuspect@example.com'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
