import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 161, 125),
      appBar: AppBar(
        title: Image.asset('assets/kma-logo-app.png'),
        backgroundColor: const Color.fromARGB(255, 8, 161, 125),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              const TextSpan(
                text:
                    'KMA Analys is an auto-renewable subscription. The user will be charged 1999kr every month. Your subscription will be charged to your Apple account at confirmation of purchase and will automatically renew every month unless auto-renew is turned off. You are free to cancel the subscription at any given time.',
              ),
              TextSpan(
                text: 'Privacy policy',
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color.fromARGB(255, 254, 254, 254),
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    final url =
                        'https://www.privacypolicies.com/live/5a0a4453-3bcc-47b8-b850-188cb3206143';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
              ),
              const TextSpan(text: ' | '),
              TextSpan(
                text: 'Terms of Use',
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    final url =
                        'https://www.apple.com/legal/internet-services/itunes/dev/stdeula/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
