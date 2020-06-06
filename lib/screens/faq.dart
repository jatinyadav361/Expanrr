import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanrr FAQ's"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '1. About Expanrr',
              textScaleFactor: 1.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
              'Expanrr is an online media platform for all aspiring newbies to build their ambitions and take the opportunities of exploring their skills and talents. Expanrr is not only for young mature entrepreneurs but also for every raw enthusiastic youngster to bring his or her talent overboard.',
              textScaleFactor: 1.2,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '2. Our Mission',
              textScaleFactor: 1.8,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Text(
                'Your day to day experiences connect you to learning which takes you on the path of growth. That is how we arrived at the Mission of this venture: Connect, Learn And Grow. We aim to assist learners/beginners- all-new young entrepreneurs, who can share their stories and experiences, talk about their products or launch their brands. The goal is to inspire the young guns to fire, take the journey and carve their niche domains.',
                textScaleFactor: 1.2,
              )),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '3. Why us?',
              textScaleFactor: 1.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
              'Of all success stories, the most enthralling ones are those where young ambitious aspirants have to take small steps to succeed in the face of various hurdles that challenge every step. The absence of focus on young entrepreneurs gave us an opportunity to work on their marketing skills, publicize their brands, create customers and improve businesses. As time is money, spreading knowledge through Videos, Podcasts, eBooks or blogs not only saves time but also provides in ‘Briefs’ instant suggestions.',
              textScaleFactor: 1.2,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'For more details, visit:',
              textScaleFactor: 1.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:15.0,bottom: 20.0),
            child: InkWell(
                child: Text(
              'http://www.expanrr.com/faqs/',
              textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
              ),
              splashColor: Colors.blueAccent,
              onTap: (){
                  _launchUrl('http://www.expanrr.com/faqs/');
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async{
    try{
      if(await canLaunch(url)) {
        await launch(url,forceSafariVC: false,universalLinksOnly: true);
      }
    }
    catch(e) {
      print('error:$e');
    }
  }

}
