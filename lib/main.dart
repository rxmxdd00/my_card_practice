import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget cards({IconData? icons, String? title}) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 25.0,
      ),
      child: ListTile(
        leading: Icon(
          icons,
          color: Colors.teal,
        ),
        title: Text(
          '$title',
          style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'SansSource',
              color: Colors.teal.shade900),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/my-pic-edited.png'),
            ),
            const Text(
              'Reiner Albania',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              'PROGRAMMER TRAINEE',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceSans',
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            cards(icons: Icons.phone, title: '+63 949 153 2961'),
            cards(icons: Icons.email, title: 'albania.reiner20@gmail.com'),
            cards(
                icons: Icons.branding_watermark,
                title: 'Accent Micro Technologies Inc.'),
            cards(icons: Icons.location_on, title: 'Binangonan, Rizal'),
          ],
        )),
      ),
    );
  }
}
