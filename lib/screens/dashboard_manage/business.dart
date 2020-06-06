import 'package:flutter/material.dart';
import 'package:expanrr/screens/description.dart';

class Business extends StatefulWidget {
  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business'),
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(flex:1,
                      child:Text(
                        'BUSINESS',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(flex: 2,
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
                          'assets/business/images (3).jpeg'),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                    child: Text(
                      'Business Plan Template:A Step-by-Step Guide For Entrepreneurs',
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
                          'assets/business/images (2).jpeg'),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                    child: Text(
                      'What is a Business Model? Business Model Explained',
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
