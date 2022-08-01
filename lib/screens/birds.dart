import 'package:flutter/material.dart';

import '../helper/home_helper.dart';
import '../model/home_model.dart';

class Birds extends StatefulWidget {
  const Birds({Key? key}) : super(key: key);

  @override
  State<Birds> createState() => _BirdsState();
}

class _BirdsState extends State<Birds> {
  late Future<List<Hm>> fetchAllData;

  @override
  void initState() {
    super.initState();
    Home_Helper.home_helper.deleteAllData();
    Home_Helper.home_helper.b1();
    Home_Helper.home_helper.b2();
    Home_Helper.home_helper.b3();
    Home_Helper.home_helper.b4();
    Home_Helper.home_helper.b5();
    fetchAllData = Home_Helper.home_helper.fetch();
  }

  @override
  Widget build(BuildContext context) {
    //dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xffb29279),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 280,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Birds",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Animal",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40,left: 10),
                  child: IconButton(onPressed: (){
                    Navigator.of(context).pushReplacementNamed('home');
                  }, icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30,)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: FutureBuilder(
                future: fetchAllData,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("ERROR: ${snapshot.error}"),
                    );
                  } else if (snapshot.hasData) {
                    List<Hm> data = snapshot.data;

                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 280,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage("${data[i].image}"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${data[i].title}",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${data[i].txt}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    //Text("${data[i].allDetail}"),
                                  ],
                                ),
                              ],
                            ),
                          );
                        });
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Quick categories", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                  SizedBox(height: 15,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.of(context).pushNamed('detail');
                          },
                          child:  Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xffe0c4a6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/img/i1.png'),
                                  color: Colors.white,
                                  height: 50,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "MAMMALS",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                         const SizedBox(width: 20,),
                        InkWell(
                          onTap:(){
                            Navigator.of(context).pushNamed('reptiles');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xffe0c4a6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/img/icontwo.png'),
                                  color: Colors.white,
                                  height: 50,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "REPTILE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),),
                        const SizedBox(width: 20,),
                        InkWell(
                          onTap:(){
                            Navigator.of(context).pushNamed('fish');
                          },
                          child:
                          Container(

                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xffe0c4a6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/img/i3.png'),
                                  color: Colors.white,
                                  height: 50,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "FISH",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),),
                        const SizedBox(width: 20,),
                        InkWell(
                          onTap:(){
                            Navigator.of(context).pushNamed('amphibian');
                          },
                          child:
                          Container(

                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xffe0c4a6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/img/i4.png'),
                                  color: Colors.white,
                                  height: 50,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "AMPHIBIAN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
