import 'package:flutter/material.dart';

import 'dataFilePage.dart';

class PlayerPage extends StatefulWidget {

  PlayerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  var rating = 3.0;
  var intVal = 3.0;
  List<String> _locations = ['Jose Alvarado', 'Moses Wright', 'James Banks', 'Michael Devoe']; // Option 2
  String _selectedLocation;
  @override

  Widget _mySubmitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DataFilePage(title: "Players")));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.grey, width: 2),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.grey.shade400),
        child: Text(
          'Submit',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc3A239),
        title: Text(widget.title),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 50.0, bottom: 40.0),
                  child: Text("Intensity",
                      style: TextStyle(
                          fontFamily: 'RobotMono',
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400)),
                ),
                Container(
                  child: Slider(
                    value: rating,
                    onChanged: (newRating) {
                      setState(() => rating = newRating);
                    },
                    divisions: 4,
                    min: 1,
                    max: 5,
                    label: "$rating",
                  ),

                ),

                Container(
                  padding: EdgeInsets.only(top: 50.0, bottom: 40.0),
                  child: Text("Volume",
                      style: TextStyle(
                          fontFamily: 'RobotMono',
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400)),
                ),
                Container(
                  child: Slider(
                    value: intVal,
                    onChanged: (newRating) {
                      setState(() => intVal = newRating);
                    },
                    divisions: 4,
                    min: 1,
                    max: 5,
                    label: "$intVal",
                  ),
                ),

              DropdownButton(
                hint: Text('Please select a player'), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),

              SizedBox(
                height: 80,
              ),
              _mySubmitButton(),
            ])),
    );
  }
}


