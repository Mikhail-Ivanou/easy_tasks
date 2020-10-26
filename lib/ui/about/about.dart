import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const licenceUrl = 'https://en.wikipedia.org/wiki/MIT_License';
const sourceUrl = 'https://github.com/Mikhail-Ivanou/easy_tasks';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'DISCLAIMER!!!',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'This is sample app created as case study. All content is saved in cloud database (Firestore) as plain text. \n \n Use for your own risk',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 48,
            ),
            const Text(
              'Licence: MIT',
              style: TextStyle(fontSize: 24),
            ),
            FlatButton(
              onPressed: () async {
                _launchURL(licenceUrl);
              },
              child: const Text(
                'Read licence wiki',
                style: TextStyle(fontSize: 18),
              ),
            ),
            FlatButton(
              onPressed: () async {
                _launchURL(sourceUrl);
              },
              child: const Text(
                'Source code',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
