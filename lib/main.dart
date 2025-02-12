import 'package:flutter/material.dart';
import 'package:krypto/home_page.dart';

void main() {
  runApp(Krypto());
}

class Krypto extends StatelessWidget {
  const Krypto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
