import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        backgroundColor: const Color.fromARGB(255, 128, 211, 185),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body:
    const WebView(
    initialUrl: 'https://ewt6x54kih9.typeform.com/to/L6Ii26EK',
    javascriptMode: JavascriptMode.unrestricted,
    
    )
    );
  }
}


