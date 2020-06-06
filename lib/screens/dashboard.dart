import 'package:expanrr/screens/dashboard_manage/business.dart';
import 'package:expanrr/screens/dashboard_manage/digital_wisdom.dart';
import 'package:expanrr/screens/dashboard_manage/eredu_training.dart';
import 'package:expanrr/screens/dashboard_manage/learn&grow.dart';
import 'package:expanrr/screens/dashboard_manage/search_bar.dart';
import 'package:expanrr/screens/start_up.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/dashboard3 (2).jpg'),
              ),
            ),
          ),
          SafeArea(
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 20),
                          alignment: Alignment.centerLeft,
                          height: 64,
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/expanrr.png'),
                          )),
                      Expanded(
                          child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          GestureDetector(
                            child: Card(
                              elevation: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage('assets/startup.jpeg'),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'STARTUPS',
                                    textScaleFactor: 1.3,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) => Startup(),
                              ));
                            },
                          ),

                          GestureDetector(
                              child: Card(
                            elevation: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/business.jpeg'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'BUSINESS',
                                  textScaleFactor: 1.3,
                                )
                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Business(),
                              ));
                            },
                          ),

                          GestureDetector(
                              child: Card(
                            elevation: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/digital.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'DIGITAL WISDOM',
                                  textScaleFactor: 1.3,
                                )
                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) => DigitalWisdom(),
                              ));
                            },
                          ),

                          GestureDetector(
                              child: Card(
                            elevation: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/learn grow.jpeg'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'LEARN AND GROW',
                                      textScaleFactor: 1.3,
                                    ))
                                ],
                              ),
                            ),
                            onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => LearnGrow(),
                                ));
                            },

                          ),
                          GestureDetector(
                              child: Card(
                            elevation: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/training.jpeg'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'EREDU TRAINING PROGRAMS',
                                  textScaleFactor: 1.2,
                                )
                              ],
                            ),
                          ),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => EREDUTraining(),
                              ));
                            },
                          ),
                          GestureDetector(
                              child: Card(
                            elevation: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.search),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'SEARCH',
                                  textScaleFactor: 1.3,
                                )
                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => SearchBar(),
                              ));
                            },
                          ),
                        ],
                      )),
                    ],
                  ))),
        ],
      ),
    );
  }
}
