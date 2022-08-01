import 'package:flutter/material.dart';

class Reptiles extends StatefulWidget {
  const Reptiles({Key? key}) : super(key: key);

  @override
  State<Reptiles> createState() => _ReptilesState();
}

class _ReptilesState extends State<Reptiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reptiles"),
      ),
    );
  }
}
