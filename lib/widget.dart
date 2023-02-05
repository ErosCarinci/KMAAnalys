import 'package:kalkylanalys/orderpage.dart';

import 'authpage.dart';
import 'FrontPage.dart';
import 'loginpage.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
 backgroundColor: const Color.fromARGB(255, 8, 161, 125),      
 appBar: AppBar(
 elevation: 0,
 backgroundColor: Colors.transparent,
 ),
    body: StreamBuilder(
      stream: Auth().authStatusChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const FrontPage();
        } else {
          return const LoginPage();
        }
      },
    ),
    );
  }
}