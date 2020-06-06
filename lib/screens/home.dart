import 'package:expanrr/screens/dashboard.dart';
import 'package:expanrr/screens/description.dart';
import 'package:expanrr/screens/faq.dart';
import 'package:expanrr/screens/login_page.dart';
import 'package:expanrr/screens/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Image(
              image: AssetImage('assets/expanrr.png'),
            )),
            ListTile(
              title: Text(
                'Dashboard',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Dashboard(),
                    ));
              },
            ),
            ListTile(
              title: Text(
                'Login/Register',
                textScaleFactor: 1.5,
              ),
              onTap: () {
//                todo create a login and register screen
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => LoginPage(),
              ));
              },
            ),
            ListTile(
              title: Text(
                'Join our team',
                textScaleFactor: 1.5,
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Connect with us:',
                textScaleFactor: 1.5,
              ),
              subtitle: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/fb.png'),
                        ),
                        onTap: () {
                          _launchUrl('https://www.facebook.com/expanrr/?ti=as');
                        },
                      )),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/insta.jpeg'),
                        ),
                        onTap: () {
                          _launchUrl('https://www.instagram.com/expanrr/');
                        },
                      )),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/youtube.png'),
                        ),
                        onTap: () {
                          _launchUrl(
                              'https://www.youtube.com/channel/UChts9JnIhHXe8uvJpR_LBDw');
                        },
                      )),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/twitter.jpeg'),
                        ),
                        onTap: () {
                          _launchUrl('https://twitter.com/Expanrrmedia?s=08');
                        },
                      )),
                ],
              ),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Expanrr'),
        actions: <Widget>[
          PopupMenuButton(
              icon: Icon(Icons.more_vert),
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem(
                    child: action(choice),
                    value: choice,
                  );
                }).toList();
              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage('assets/expanrr.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 160),
            child:
            FlatButton(
              child: Text('About Expanrr',textScaleFactor: 1.8,style: TextStyle(color: Colors.blueAccent),),
              onPressed: (){
                _launchUrl('https://www.expanrr.com/our-story/');
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(flex:1,
                      child:Text(
                        'POPULAR',
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
          Stack(
            children: [
              Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/startupForHomeScreen.jpeg'),
                )),
              ),
              SafeArea(
                  child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 120, right: 160),
                      child: Container(
                          height: 20,
                          width: 90,
                          child: RaisedButton(
                            child: Text('Startup'),
                            color: Colors.red,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Description(),
                              ));
                            },
                          ))),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10, right: 30),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Description(),
                        ));
                      },
                      child: Text(
                        'Startup:A step towards new life',
                        textScaleFactor: 1.4,
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 35, right: 40, bottom: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.person_outline,
                              color: Colors.purple,
                            ),
                          ),
                          Expanded(
                            flex: 16,
                            child: FlatButton(
                              child: Text('Writer',
                                  style: TextStyle(color: Colors.purple)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => Description(),
                                ));
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.purple,
                            ),
                          ),
                          Expanded(
                            flex: 20,
                            child: FlatButton(
                              child: Text('June 6, 2020',
                                  style: TextStyle(color: Colors.purple)),
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
              )),
            ],
          ),
          Stack(
            children: [
              Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/business plans home.jpeg'),
                )),
              ),
              SafeArea(
                  child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 120, right: 160),
                      child: Container(
                          height: 20,
                          width: 90,
                          child: RaisedButton(
                            child: Text('Business'),
                            color: Colors.red,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Description(),
                              ));
                            },
                          ))),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10, right: 30),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Description(),
                        ));
                      },
                      child: Text(
                        'Corona Pandemic:Effect on Business sector',
                        textScaleFactor: 1.4,
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 35, right: 40, bottom: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.person_outline,
                              color: Colors.purple,
                            ),
                          ),
                          Expanded(
                            flex: 16,
                            child: FlatButton(
                              child: Text('Writer',
                                  style: TextStyle(color: Colors.purple)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => Description(),
                                ));
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.purple,
                            ),
                          ),
                          Expanded(
                            flex: 20,
                            child: FlatButton(
                              child: Text('June 6, 2020',
                                  style: TextStyle(color: Colors.purple)),
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
              )),
            ],
          ),

          Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(flex:3,
                      child:Text(
                    'STARTUPS',
                    textScaleFactor: 1.5,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(flex: 5,
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
                      'assets/startupImages/Artboard-1-copy@2x-100-2.jpg'),
                )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: FlatButton(
                        child: Text(
                      'Factors on which success of your startup depends',
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
                          'assets/startupImages/images.jpeg'),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                    child: Text(
                      'Startup Weekly Update:Everything that you needs to know',
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

          Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(flex:6,
                      child:Text(
                        'DIGITAL WISDOM',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(flex: 5,
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
                          'assets/digital wisdom/images.jpeg'),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                    child: Text(
                      'Why We Need Digital Wisdom Technology in Education?',
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
                          'assets/digital wisdom/images (1).jpeg'),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                    child: Text(
                      'Top 20 Digital Marketing Trends',
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
      backgroundColor: Colors.white,
    );
  }

  choiceAction(String choice) {
    if (choice == "FAQ's") {
      return Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => FAQ(),
      ));
    }
    if (choice == 'Privacy Policy') {
      return Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => PrivacyPolicy(),
      ));
    }
  }

  Widget action(choice) {
    if (choice == "FAQ's") {
      return ListTile(
        title: Text(choice),
      );
    }
    if (choice == "Privacy Policy") {
      return ListTile(
        title: Text(choice),
      );
    }
  }

  Future<void> _launchUrl(String url) async {
    try {
      if (await canLaunch(url) == true) {
        await launch(url, universalLinksOnly: true, forceSafariVC: false);
      }
    } catch (e) {
      print('Error:$e');
    }
  }
}

class Constants {
  static const firstChoice = "FAQ's";

  static const secondChoice = 'Privacy Policy';

  static const List<String> choices = <String>[
    firstChoice,
    secondChoice,
  ];
}
