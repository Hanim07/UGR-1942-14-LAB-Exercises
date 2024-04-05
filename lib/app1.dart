import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ijTracker',
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('ijTracker')),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/IMG_0126.JPG'),
                ),
                SizedBox(width: 8.0),
                Text('Robert Steven'),
                Spacer(),
                Text('Logout'),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: Text('Online | Battery 90%'),
            ),
          ),
          GridView.count(
            padding: EdgeInsets.all(2.0),
            shrinkWrap: true,
            crossAxisCount: 3,
            children: <Widget>[
              IconWithText(Icons.flag, 'Flag'),
              IconWithText(Icons.location_on, 'Location'),
              IconWithText(Icons.access_time, 'Clock'),
              IconWithText(Icons.public, 'World'),
              IconWithText(Icons.info, 'Info'),
              IconWithText(Icons.edit, 'Pen'),
              IconWithText(Icons.rotate_left, 'Rotate'),
              IconWithText(Icons.vpn_key, 'Key'),
              IconWithText(Icons.power_settings_new, 'Power Save'),
              IconWithText(Icons.battery_charging_full, 'Charging'),
              IconWithText(Icons.message, 'Message'),
              IconWithText(Icons.email, 'Email'),
              IconWithText(Icons.cached, 'Loading'),
              IconWithText(Icons.power_off, 'Power Off'),
            ],
          ),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  IconWithText(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40, color: Colors.blue),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
