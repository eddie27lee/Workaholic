import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter_login_signup/src/playerPage.dart';

class HomePage extends StatefulWidget {

  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var rating = 3.0;
  var intVal = 3.0;
  DateTime _selectedValue = DateTime.now();

  @override

  Widget _mySubmitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PlayerPage(title: "Players")));
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
                padding: EdgeInsets.all(20.0),
                color: Colors.blueGrey[100],
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DatePickerTimeline(
                        _selectedValue,
                        onDateChange: (date) {
                          // New date selected
                          setState(() {
                            _selectedValue = date;
                        });
                      },
                    ),
                  ],
                ),
                )),
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
                SizedBox(
                  height: 80,
                ),
                _mySubmitButton(),
              ])
        )

    );
  }
}