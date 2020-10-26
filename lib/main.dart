import 'package:flutter/material.dart';
import 'package:mercadopago_sdk/mercadopago_sdk.dart';
import 'package:payment_mercadopago/screens/homePage.dart';

void main() async {
  runApp(MyApp());
  var mp = MP('CLIENT_ID', 'CLIENT_SECRET');

  String token = await mp.getAccessToken();

  print('Mercadopago token $token');
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
