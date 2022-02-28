import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather Forecast"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        backgroundColor: Color.fromARGB(255, 196, 64, 55),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(children: <Widget>[
      SafeArea(
        child: Padding(
          padding: EdgeInsets.all(17.0),
          child: Column(
            children: <Widget>[
              _TextField(),
              Divider(),
              _CityDetail(),
              Divider(),
              _TemperatureDetail(),
              Divider(),
              Divider(),
              _ExtraWeatherDetail(),
              Divider(),
              _Text(),
            ],
          ),
        ),
      ),
    ]),
  );
}

Column _TextField() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          labelText: 'Enter City Name',
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      )
    ],
  );
}

Row _CityDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Rostov region, RU",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Text(
                "Friday, Mar 20, 2022",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Divider(),
          Divider(),
        ],
      ),
    ],
  );
}

Wrap _TemperatureDetail() {
  return Wrap(
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.white,
            size: 90,
          ),
        ],
      ),
      SizedBox(
        width: 24.0,
      ),
      Column(
        children: <Widget>[
          Text(
            "14 °F",
            style: TextStyle(
              color: Colors.white,
              fontSize: 55,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "LIGHT SNOW",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ],
  );
}

Row _ExtraWeatherDetail() {
  var snow1 = Column(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Icon(
        TablerIcons.snowflake,
        size: 40.0,
        color: Colors.white,
      ),
      Divider(),
      Text(
        "5",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      Text(
        "km/hr",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );

  var snow2 = Column(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Icon(
        TablerIcons.snowflake,
        size: 40.0,
        color: Colors.white,
      ),
      Divider(),
      Text(
        "3",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      Text(
        "%",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );

  var snow3 = Column(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Icon(
        TablerIcons.snowflake,
        size: 40.0,
        color: Colors.white,
      ),
      Divider(),
      Text(
        "4",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      Text(
        "%",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      snow1,
      snow2,
      snow3,
    ],
  );
}

Row _Text() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "7-DAY WEATHER FORECAST",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(
        heigth: 150.0,
    )],
  );
}
