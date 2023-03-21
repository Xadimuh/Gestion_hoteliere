// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/menu1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/background_dark.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: FractionalOffset.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 60),
            child: ElevatedButton(
              child: Text('Lancer l\'application'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 60),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccueilPage()),
                );
                // Naviguer vers l'application
              },
            ),
          ),
        ),
      ),
    );
  }
}
