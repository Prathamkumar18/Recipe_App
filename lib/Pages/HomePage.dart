import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/Pages/FullDetail.dart';
import 'package:recipe_app/Pages/RecipeDetails.dart';
import 'package:recipe_app/Utils/theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});
  late RecipeDetails data;

  List<RecipeDetails> li = getRecipes();

  var light_mode = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          light_mode == 1 ? Color(0xFFeaf4fc) : MyTheme.darkCreamColor,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu_outlined,
          color: light_mode == 1 ? Colors.black : Colors.white,
        ),
        backgroundColor:
            light_mode == 1 ? Colors.white70 : MyTheme.darkCreamColor,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  light_mode ^= 1;
                });
              },
              icon: Icon(
                Icons.lightbulb_outline,
                color: light_mode == 1 ? Colors.black : Colors.white,
              ))
        ],
      ),
      body: Container(
          color: light_mode == 1 ? Colors.white70 : MyTheme.darkCreamColor,
          child: Column(
            children: [
              Container(
                  height: 90,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("  Springy Salads",
                              style: GoogleFonts.alegreya(
                                  color: light_mode == 1
                                      ? Colors.black
                                      : Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40)),
                          Text("    Healthy and nutritious food recipes",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ],
                      )
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 340,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 240,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FullDetail(
                                            index: index,
                                            light_mode:light_mode,
                                          )));
                            },
                            child: Card(
                              color: light_mode == 1
                                  ? Colors.white
                                  : MyTheme.darkBluishColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation: 10,
                              shadowColor: light_mode == 1
                                  ? Colors.white
                                  : Colors.purple,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 220,
                                        width: 220,
                                        child: Image(
                                          image: AssetImage(
                                              li.elementAt(index).image),
                                        ),
                                      ),
                                      Text(li.elementAt(index).title,
                                          style: TextStyle(
                                              color: light_mode == 1
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25)),
                                      Text(li.elementAt(index).description,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                              li
                                                      .elementAt(index)
                                                      .calories
                                                      .toString() +
                                                  " Kcal",
                                              style: TextStyle(
                                                  color: light_mode == 1
                                                      ? Colors.black
                                                      : Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            color: light_mode == 1
                                                ? Colors.black
                                                : Colors.red,
                                          )
                                        ],
                                      )
                                    ]),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: li.length)),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                child: Row(
                  children: [
                    Text("   Popular",
                        style: TextStyle(
                            color:
                                light_mode == 1 ? Colors.black : Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26)),
                    Text(" Foods",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 26)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                height: 230,
                width: 460,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullDetail(
                                      index: index + 2,light_mode: light_mode,
                                    )));
                      },
                      child: Card(
                        color: light_mode == 1
                            ? Colors.white
                            : MyTheme.darkBluishColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              child: Image(
                                image:
                                    AssetImage(li.elementAt(index + 2).image),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Text(li.elementAt(index + 2).title,
                                    style: TextStyle(
                                        color: light_mode == 1
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(li.elementAt(index + 2).description,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10)),
                                SizedBox(
                                  height: 60,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                        li
                                                .elementAt(index + 2)
                                                .calories
                                                .toString() +
                                            " Kcal",
                                        style: TextStyle(
                                            color: light_mode == 1
                                                ? Colors.black
                                                : Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Icon(
                                      Icons.favorite_outline_outlined,
                                      color: light_mode == 1
                                          ? Colors.black
                                          : Colors.red,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                  itemCount: li.length - 2,
                ),
              ),
            ],
          )),
    );
  }
}
