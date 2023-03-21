import 'package:flutter/material.dart';
// import 'package:sama_hotel/main.dart';
import 'package:flutter_application_2/screens/ajouter_reservation.dart';
// import 'package:sama_hotel/screens/option.dart';

class GestionReservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion Reservation'),
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
                  horizontal: 88.5,
                  vertical: 10), // Ajouter une marge de 10 pixels
              child: ElevatedButton(
                onPressed: () {
                  // Code pour gérer l'hôtel
                },
                child: Text('Liste réservations'),
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
                  // Code pour gérer les chambres
                },
                child: Text('Annuler Reservation'),
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
                    MaterialPageRoute(builder: (context) => MyForm0()),
                  );
                  // Code pour gérer les factures
                },
                child: Text('Ajouter Reservation'),
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
