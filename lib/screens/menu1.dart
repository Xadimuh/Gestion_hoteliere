import 'package:flutter/material.dart';

class AccueilPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _hotelName = "";
  int _numFloors = 0;
  int _numRoomsPerFloor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion Hoteliere'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Nom de l\'hôtel :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez saisir le nom de l\'hôtel';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _hotelName = value!;
                  },
                  initialValue: _hotelName,
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Nombre d\'étages :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez saisir le nombre d\'étages';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Veuillez saisir un nombre valide';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    _numFloors = int.parse(value!);
                  },
                  initialValue: _numFloors?.toString(),
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Nombre de chambres par étage :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez saisir le nombre de chambres par étage';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Veuillez saisir un nombre valide';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    _numRoomsPerFloor = int.parse(value!);
                  },
                  initialValue: _numRoomsPerFloor?.toString(),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                    child: Text('Enregistrer'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // TODO: Envoyer les données à un service d'enregistrement
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
