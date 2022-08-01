import 'package:db_miner2/helper/home_helper.dart';
import 'package:flutter/material.dart';

import '../model/home_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<Hm>> fetchAllData;

  @override
  void initState() {
    super.initState();
    Home_Helper.home_helper.deleteAllData();
    Home_Helper.home_helper.insert1();
    Home_Helper.home_helper.insert2();
    Home_Helper.home_helper.insert3();
    Home_Helper.home_helper.insert4();
    Home_Helper.home_helper.insert5();
    fetchAllData = Home_Helper.home_helper.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb29279),
      appBar: AppBar(
        backgroundColor: Color(0xffb29279),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffecd1b3),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "aplanet",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xffecd1b3),
          ),
        ),
      ),
      body: FutureBuilder(
          future: fetchAllData,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("ERROR: ${snapshot.error}"),
              );
            } else if (snapshot.hasData) {
              List<Hm> data = snapshot.data;

              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 70),
                            alignment: Alignment.topLeft,
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              (data[i].title == 'Mammals')
                                  ? Navigator.of(context).pushNamed('detail')
                                  : (data[i].title == 'Birds')
                                      ? Navigator.of(context).pushNamed('birds')
                                      : (data[i].title == 'Reptiles')
                                          ? Navigator.of(context)
                                              .pushNamed('reptiles')
                                          : (data[i].title == 'Fish')
                                              ? Navigator.of(context)
                                                  .pushNamed('fish')
                                              : null;
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 20, top: 70),
                              alignment: Alignment.topLeft,
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage("${data[i].image}"),
                                  opacity: 0.9,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "${data[i].title}",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Animal",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
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
    );
  }
}
/*
Padding(
              padding: EdgeInsets.only( top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "aplanet",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffecd1b3),
                        ),
                      ),
                      Text(
                        "we love the planet",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
 */
