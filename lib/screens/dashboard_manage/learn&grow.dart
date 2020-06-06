import 'package:flutter/material.dart';
import 'package:expanrr/screens/description.dart';

class LearnGrow extends StatefulWidget {
  @override
  _LearnGrowState createState() => _LearnGrowState();
}

class _LearnGrowState extends State<LearnGrow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn and Grow'),
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(flex:6,
                      child:Text(
                        'LEARN AND GROW',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(flex: 4,
                      child:Container(
                        width: 210,
                        height: 2,
                        color: Colors.red,
                      )),
                ],
              )),
          Card(
            elevation: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Description(),
                      ));
                    },
                    child:Image(
                      image: AssetImage(
                          'assets/learn and grow/images.jpeg'),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                    child: Text(
                      'Learn, Grow and Explore the world',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Description(),
                      ));
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 35, right: 40, bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.person_outline),
                        ),
                        Expanded(
                          flex: 16,
                          child: FlatButton(
                            child: Text('Writer'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Description(),
                              ));
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.calendar_today),
                        ),
                        Expanded(
                          flex: 20,
                          child: FlatButton(
                            child: Text('June 6, 2020'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Description(),
                              ));
                            },
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Card(
            elevation: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Description(),
                      ));
                    },
                    child:Image(
                      image: AssetImage(
                          'assets/learn and grow/images (1).jpeg'),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                    child: Text(
                      'Failure is a delay for a grand success',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Description(),
                      ));
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 35, right: 40, bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.person_outline),
                        ),
                        Expanded(
                          flex: 16,
                          child: FlatButton(
                            child: Text('Writer'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Description(),
                              ));
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.calendar_today),
                        ),
                        Expanded(
                          flex: 20,
                          child: FlatButton(
                            child: Text('June 6, 2020'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Description(),
                              ));
                            },
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
