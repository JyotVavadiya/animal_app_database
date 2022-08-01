import 'package:db_miner2/screens/amphibians.dart';
import 'package:db_miner2/screens/birds.dart';
import 'package:db_miner2/screens/detail.dart';
import 'package:db_miner2/screens/fish.dart';
import 'package:db_miner2/screens/home.dart';
import 'package:db_miner2/screens/intro.dart';
import 'package:db_miner2/screens/reptiles.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
       "/":(context)=>Intro(),
       "home":(context)=>Home(),
       "detail":(context)=>Detail(),
       "birds":(context)=>Birds(),
       "reptiles":(context)=>Reptiles(),
       "fish":(context)=>Fish(),
       // "amphibians":(context)=>Amphibians(),
     },
    ),
  );
}