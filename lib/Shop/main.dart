import 'package:flutter/material.dart';
import 'package:umeda/Shop/shop.dart';
import 'package:umeda/payment/payment.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: shop(),
      ),
    );
  }
}