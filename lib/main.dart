import 'package:flutter/material.dart';
import 'package:mi_card/commons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text('Mi Card'),
          backgroundColor: primaryColor,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String name = 'Durrell Gemuh A.';
    String proffession = 'Flutter Developer';
    String image = 'assets/images/pp.jpg';
    String number = '+237 671 305 865';
    String email = 'durrellgemuh07@gmail.com';
    String contact = 'Need one, Contact me';

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('$image'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$name',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white70),
          ),
          Text(
            '$proffession',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          SizedBox(
            height: 50,
            child: Divider(
              color: Colors.white70,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: primaryColor,
              ),
              title: Text('$number'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: primaryColor,
              ),
              title: Text('$email'),
            ),
          ),
          Container(
            child: Text(
              '$contact',
              style: TextStyle(color: Colors.blueGrey.shade900),
            ),
            margin: EdgeInsets.all(30),
          )
        ],
      ),
    );
  }
}
