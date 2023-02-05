import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'authpage.dart';



class HomePage extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);

final User? user = Auth().currentUser;

Future<void> signOut() async {
  await Auth().signOut();
}

Widget _title() {
  return const Text('Logga In');
}

Widget _userId() {
  return Text(user?.email ?? 'User Email');
}

Widget _signOutButton() {
  return ElevatedButton(
    
    onPressed: signOut,
    child: const Text('Logga ut')
  );
}


@override
Widget build (BuildContext context) {
  return Scaffold(
    extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(255, 6, 160, 114),
     appBar: AppBar(
       title: Image.asset('assets/images/kma-logo-app.png'),
        backgroundColor: Color.fromARGB(255, 6, 160, 114),
        centerTitle: true,
        elevation: 0,  
    ),
    body: Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _userId(),
          _signOutButton(),
          
        ],
      ),
    ),
  );
}
}