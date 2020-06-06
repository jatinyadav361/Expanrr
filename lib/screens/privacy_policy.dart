import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy.',
                textScaleFactor: 1.2,
              )),
          SizedBox(
            height: 10.0,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Information Collection and Use',
                textScaleFactor: 1.8,
              )),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '1. Personal Data\n2. Usage Data\n3. Tracking Cookies Data',
                textScaleFactor: 1.2,
              )),
          SizedBox(
            height: 10.0,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'For detailed privacy policy visit:',
                textScaleFactor: 1.4,
              )),
          Padding(
            padding: EdgeInsets.only(left: 15.0,right: 20.0),
              child: InkWell(
                focusColor: Colors.green,
                  highlightColor: Colors.green,
                  splashColor: Colors.blueAccent,
                  child: Text('http://www.expanrr.com/privacy-policy/',style: TextStyle(
                    color: Colors.blueAccent,
                    textBaseline: TextBaseline.alphabetic,
                    fontStyle: FontStyle.normal
                  ),textScaleFactor: 1.2,),
                onTap: () {
              _launchUrl('http://www.expanrr.com/privacy-policy/');
            },
          ))
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url, forceSafariVC: false, universalLinksOnly: true);
      }
    } catch (e) {
      print('error:$e');
    }
  }
}
