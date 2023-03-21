// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  DateTime _dateEntree = DateTime.now();
  int _nbNuits = 1;
  DateTime _dateSortie = DateTime.now().add(Duration(days: 1));

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
        title: Text('Ajouter les dates'),
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
            Text(
              'Date d\'entrée : ${_dateEntree.toString()}',
            ),
            ElevatedButton(
              child: Text('Changer la date d\'entrée'),
              onPressed: () async {
                final DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: _dateEntree,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (date != null && date != _dateEntree) {
                  _updateDateEntree(date);
                }
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nombre de nuits',
                border: OutlineInputBorder(),
              ),
              onChanged: _updateNbNuits,
            ),
            SizedBox(height: 20.0),
            Text(
              'Date de sortie : ${_dateSortie.toString()}',
            ),
          ],
        ),
      ),
    );
  }
}
