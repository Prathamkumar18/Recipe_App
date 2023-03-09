// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/Pages/EachDetail.dart';
import 'package:recipe_app/Utils/theme.dart';

class FullDetail extends StatelessWidget {
  int index;
  var light_mode;
  FullDetail({
    Key? key,
    required this.index,
    required this.light_mode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeaf4fc),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            light_mode == 1 ? Colors.white70 : MyTheme.darkCreamColor,
        leading: IconButton(
          color: light_mode == 1 ? Colors.black : Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: light_mode == 1 ? Colors.white70 : MyTheme.darkCreamColor,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 10,
            ),
            Text("  " + getEachDetails().elementAt(index).title,
                style: GoogleFonts.merriweather(
                    color: light_mode == 1 ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38)),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                padding: EdgeInsets.only(left: 5),
                child: Text(" " + getEachDetails().elementAt(index).description,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 280,
              width: 400,
              child: Row(
                children: [
                  Container(
                    height: 300,
                    width: 180,
                    child: Column(
                      children: [
                        Text("  Nutritions ",
                            style: GoogleFonts.merriweather(
                                color: light_mode == 1
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 31)),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 170,
                          child: Card(
                            color: light_mode == 1
                                ? Colors.white
                                : MyTheme.darkBluishColor,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                      getEachDetails()
                                          .elementAt(index)
                                          .calories
                                          .toString(),
                                      style: TextStyle(
                                          color: light_mode == 1
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 23)),
                                  Text("Calories kcal",
                                      style: TextStyle(
                                          color: light_mode == 1
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: 170,
                          child: Card(
                            color: light_mode == 1
                                ? Colors.white
                                : MyTheme.darkBluishColor,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                      getEachDetails()
                                          .elementAt(index)
                                          .carbo
                                          .toString(),
                                      style: TextStyle(
                                          color: light_mode == 1
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 23)),
                                  Text("Carbo g",
                                      style: TextStyle(
                                          color: light_mode == 1
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: 170,
                          child: Card(
                            color: light_mode == 1
                                ? Colors.white
                                : MyTheme.darkBluishColor,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                      getEachDetails()
                                          .elementAt(index)
                                          .protein
                                          .toString(),
                                      style: TextStyle(
                                          color: light_mode == 1
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 23)),
                                  Text("Protein g",
                                      style: TextStyle(
                                          color: light_mode == 1
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 260,
                    width: 211,
                    child: Image(
                      fit: BoxFit.fill,
                      image:
                          AssetImage(getEachDetails().elementAt(index).image),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text("  Ingredients",
                style: GoogleFonts.merriweather(
                    color: light_mode == 1 ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 31)),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Text(getEachDetails().elementAt(index).ingredient,
                  style: GoogleFonts.arvo(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
            Center(
              child: FloatingActionButton.extended(
                splashColor: Colors.blue,
                focusElevation: 10,
                elevation: 20,
                onPressed: () {},
                icon: Icon(Icons.play_circle),
                label: Text("Watch Video"),
                backgroundColor:
                    light_mode == 1 ? Colors.green : MyTheme.lightBluishColor,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text("  Recipe preparation",
                style: GoogleFonts.merriweather(
                    color: light_mode == 1 ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 31)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(getEachDetails().elementAt(index).Preparation,
                  style: GoogleFonts.arvo(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
          ]),
        ),
      ),
    );
  }
}
