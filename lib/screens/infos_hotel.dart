import 'package:flutter/material.dart';
import 'package:ansicolor/ansicolor.dart';

class Hotel {
  String nom;
  int nbrEtage;
  int nbrChambreEtage;

  Hotel(
      {required this.nom,
      required this.nbrEtage,
      required this.nbrChambreEtage});

  void afficherDetails() {
    // Initialiser les couleurs
    final red = AnsiPen()..red();
    final green = AnsiPen()..green();
    final yellow = AnsiPen()..yellow();
    final blue = AnsiPen()..blue();

    // Afficher les éléments avec des couleurs et de la mise en forme
    print(red('Nom : ') + green(nom));
    print(yellow('Nombre d\'étages : ') + blue('$nbrEtage'));
    print(yellow('Nombre de chambres par étage : ') + blue('$nbrChambreEtage'));
  }
}

class HotelDetailsWidget extends StatelessWidget {
  final Hotel hotel;

  const HotelDetailsWidget({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialiser les couleurs
    final red = AnsiPen()..red();
    final green = AnsiPen()..green();
    final yellow = AnsiPen()..yellow();
    final blue = AnsiPen()..blue();

    return Column(
        mainAxisAlignment: MainAxisAlignment.end, // Aligner les éléments en bas
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            red('Nom : ') + green(hotel.nom),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            yellow('Nombre d\'étages : ') + blue('${hotel.nbrEtage}'),
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            yellow('Nombre de chambres par étage : ') +
                blue('${hotel.nbrChambreEtage}'),
            style: TextStyle(fontSize: 16),
          ),
        ]);
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
    );
  }
}
