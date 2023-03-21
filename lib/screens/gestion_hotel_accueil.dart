// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/infos_hotel.dart';
// import 'package:flutter_application_2/screens/accueil.dart';

class GestionHotel extends StatelessWidget {
  Hotel hotel = Hotel(nom: 'Radisson Blue', nbrEtage: 3, nbrChambreEtage: 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion Hotel'),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 35, 7, 7),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/background_dark.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 84,
                vertical: 10,
              ), // Ajouter une marge de 10 pixels
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HotelForm()),
                  // );
                  // Code pour gérer l'hôtel
                },
                child: Text('Les infos de l\'hôtel'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => HotelDetailsWidget(hotel: hotel),
                  //   ),
                  // );
                },
                child: Text('Modifier le nom de l\'hôtel'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Code pour gérer les factures
                },
                child: Text('Modifier les tarifs'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Code pour gérer les réservations
                },
                child: Text('Renitialiser hotel'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100.0),
            SizedBox(height: 100.0),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Code pour retour
                  Navigator.of(context).pop();
                },
                child: Text('Retour'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
