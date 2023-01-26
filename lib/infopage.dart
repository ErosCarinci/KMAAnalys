import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        backgroundColor: const Color.fromARGB(255, 8, 161, 125),
      appBar: AppBar(
        title: const Text("My Baby's Page"),
        backgroundColor: Colors. transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
         child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/mash.png',
          fit: BoxFit.cover,
          ),
        ],
      ),
        ),
        ),
    );
  }
}