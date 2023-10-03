import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _url = 'https://www.youtube.com';   
  final String _phoneNumber = '+05055804785';   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MaterialButton(
            onPressed: () async {
              final _call = 'tel:$_phoneNumber';
              final _text = 'tel:$_phoneNumber';
              if(await canLaunchUrlString(_text)){
                await launchUrlString(_text);
              }
            },
            color: Colors.red,
            child: const Text(
              'Text!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

