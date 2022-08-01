import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/intro.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ready to\nwatch?", style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                      SizedBox(height: 10,),
                      Text("Animals are multicellular eukaryotes whose\ncells are bound together by collagen.",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ],
                  ),
                ),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed('home');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Start Enjoying", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),),
                      Icon(Icons.arrow_forward_ios_outlined, color: Colors.white, size: 30,)
                    ],
                  ),
                ),
              ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}



