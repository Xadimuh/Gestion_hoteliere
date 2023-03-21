// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application_2/screens/gestion_chambre.dart';
import 'package:flutter_application_2/screens/gestion_hotel_accueil.dart';
import 'package:flutter_application_2/screens/gestion_reservation.dart';
import 'package:flutter_application_2/screens/gestion_facture.dart';

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Principal'),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 35, 7, 7),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Expanded(
          child: Container(
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
                    horizontal: 100,
                    vertical: 20,
                  ), // Ajouter une marge de 10 pixels
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GestionHotel()),
                      );
                      // Code pour gérer l'hôtel
                    },
                    child: Text('Gestion hôtel'),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GestionChambre()),
                      );
                      // Code pour gérer les chambres
                    },
                    child: Text('Les Chambres'),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => GestionClient()),
                      // );
                      // Code pour gérer les factures
                    },
                    child: Text('Les clients'),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GestionReservation()),
                      );
                      // Code pour gérer les réservations
                    },
                    child: Text('Les Réservations'),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GestionFacture()),
                      );
                      // Code pour gérer les factures
                    },
                    child: Text('Les Factures'),
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
                      // Code pour quitter l'application
                      Navigator.of(context).pop();
                    },
                    child: Text('Quitter'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 60),
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
