import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MaterialApp(
    home: HomeRental(),
  ));
}

class HomeRental extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.camera_alt),
          iconSize: 32,
          color: Colors.amberAccent,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          )
        ],
        title: Text("Rental"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Your Current Vehicle",
            style: TextStyle(
                color: Colors.grey[500],
                fontFamily: "Oswald",
                fontWeight: FontWeight.bold,
                fontSize: 36),
          ),
          Container(
            width: double.infinity,
            height: 175,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/porsche.png"),
                    fit: BoxFit.fitWidth)),
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width - 40,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "PORSCHE",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Oswald"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "2019 - 911 CARRERA S",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 18,
                          fontFamily: "Oswald",
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            width: MediaQuery.of(context).size.width - 40,
            height: 1,
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width - 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.account_balance_wallet),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    Text(
                      "19/24",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Oswald",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.timer),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    Text(
                      "3.2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Oswald",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.signal_cellular_4_bar),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    Text(
                      "443",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Oswald",
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            width: MediaQuery.of(context).size.width - 40,
            height: 1,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.refresh),
                color: Colors.grey,
                onPressed: () {},
              ),
              Text("EXCHANGE YOUR VEHICLE",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Oswald",
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold)),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                color: Colors.grey,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.backspace,
                color: Colors.grey,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Colors.grey,
              ),
              title: Text("")),
        ],
      ),
    );
  }
}
