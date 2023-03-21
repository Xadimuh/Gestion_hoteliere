import 'package:flutter/material.dart';

class GestionChambre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion Chambre'),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 35, 7, 7),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_dark.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 81,
                  vertical: 10), // Ajouter une marge de 10 pixels
              child: ElevatedButton(
                onPressed: () {
                  // Code pour gérer l'hôtel
                },
                child: Text('Liste des chambres'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
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
                child: Text('Liste des chambres Libres'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
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
                child: Text('Liste des chambres Occupées'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
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
                child: Text('Liste des chambres Réservées'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
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
                child: Text('Modifier la classe d\'une chambre'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
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
                child: Text('Chambres :   ECONOMIQUES'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
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
                child: Text('Chambres : STANDING'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
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
                child: Text('Chambres : AFFAIRES'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Code pour retour
                  Navigator.of(context).pop();
                },
                child: Text('Retour'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
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
