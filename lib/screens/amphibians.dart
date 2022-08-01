import 'package:flutter/material.dart';

class Amphibians extends StatefulWidget {
  const Amphibians({Key? key}) : super(key: key);

  @override
  State<Amphibians> createState() => _AmphibiansState();
}

class _AmphibiansState extends State<Amphibians> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amphibians"),
      ),
    );
  }
}
