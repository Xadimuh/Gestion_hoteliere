// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/ajout_date.dart';

class MyForm0 extends StatefulWidget {
  @override
  _MyForm0State createState() => _MyForm0State();
}

class _MyForm0State extends State<MyForm0> {
  DateTime _dateEntree = DateTime.now();
  int _nbNuits = 1;
  DateTime _dateSortie = DateTime.now().add(Duration(days: 1));

  // Ajout des variables pour le formulaire
  String _nom = '';
  String _prenom = '';
  String _telephone = '';
  String _classe = '';
  String _numChambre = '';
  bool _utiliserTelephone = false;
  bool _utiliserBar = false;
  bool _utiliserPetitDej = false;

  String _telephoneDansLaChambre = "non";

  bool _telephoneDansChambre = false;

  var _barDansLaChambre;

  var _petitDejeunerInclus;

  // Ajout des méthodes pour la mise à jour des champs du formulaire
  void _updateNom(String value) {
    setState(() {
      _nom = value;
    });
  }

  void _updatePrenom(String value) {
    setState(() {
      _prenom = value;
    });
  }

  void _updateTelephone(String value) {
    setState(() {
      _telephone = value;
    });
  }

  void _updateClasse(String value) {
    setState(() {
      _classe = value;
    });
  }

  void _updateNumChambre(String value) {
    setState(() {
      _numChambre = value;
    });
  }

  void _updateUtiliserTelephone(bool value) {
    setState(() {
      _utiliserTelephone = value;
    });
  }

  void _updateUtiliserBar(bool value) {
    setState(() {
      _utiliserBar = value;
    });
  }

  void _updateUtiliserPetitDej(bool value) {
    setState(() {
      _utiliserPetitDej = value;
    });
  }

  void _updateDateEntree(DateTime date) {
    setState(() {
      _dateEntree = date;
      _updateDateSortie();
    });
  }

  void _updateNbNuits(String value) {
    setState(() {
      _nbNuits = int.parse(value);
      _updateDateSortie();
    });
  }

  void _updateDateSortie() {
    setState(() {
      _dateSortie = _dateEntree.add(Duration(days: _nbNuits));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page de reservation'),
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
            TextField(
              decoration: InputDecoration(
                labelText: 'Nom',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _nom = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Prénom',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _prenom = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              style: TextStyle(
                color: Colors.blue, // La couleur du texte
              ),
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Numéro de téléphone',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _telephone = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Classe',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _classe = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Numéro de chambre',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _numChambre = int.parse(value) as String;
                });
              },
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Text('Téléphone dans la chambre?'),
                SizedBox(width: 20.0),
                Switch(
                  value: _telephoneDansChambre,
                  onChanged: (value) {
                    setState(() {
                      _telephoneDansChambre = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                ElevatedButton(
                  child: Text('Ajouter les dates'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 60),
                    textStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    // Code pour retour
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyForm()),
                    );
                    // Code pour gérer les factures
                  },
                )
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Text('Petit dej dans la chambre'),
                SizedBox(width: 20.0),
                Switch(
                  value: _utiliserPetitDej,
                  onChanged: (value) {
                    setState(() {
                      _utiliserPetitDej = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Text('Utilisez-vous la bar'),
                SizedBox(width: 20.0),
                Switch(
                  value: _utiliserBar,
                  onChanged: (value) {
                    setState(() {
                      _utiliserBar = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
