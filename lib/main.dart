import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'orderpage.dart';
import 'infopage.dart';




void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );

  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> { 
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 1;

final screens = [
   const InfoPage(),
   const HomePage(),
   const OrderPage(),
];
  @override
  Widget build(BuildContext context) {
final items = <Widget>[
 const Icon(
            Icons.alarm,
            color: Colors.white,
            ),
         const Icon(
            Icons.home,
            color: Colors.white,
            ),
          const Icon(
            Icons.shopping_cart_checkout_rounded,
            color: Colors.white),
        ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 161, 125),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset('assets/images/kma-logo-app.png', 
        ),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        centerTitle: true,
        elevation: 0,  
      ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 70, 70)),
        ),
      
        child: CurvedNavigationBar(
        key: navigationKey,
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(255, 2, 116, 89),
        animationDuration: const Duration(milliseconds: 300),
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
    
  }
}
