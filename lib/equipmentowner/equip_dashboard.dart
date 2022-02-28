import 'package:farmers_konekt/equipmentowner/equip_notification.dart';
import 'package:farmers_konekt/equipmentowner/equip_profile.dart';
import 'package:flutter/material.dart';

class EquipDashBoard extends StatefulWidget {
  const EquipDashBoard({ Key? key }) : super(key: key);

  @override
  _EquipDashBoardState createState() => _EquipDashBoardState();
}

class _EquipDashBoardState extends State<EquipDashBoard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(backgroundColor: Colors.greenAccent,),
        appBar: AppBar(
          
          leading: TextButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return EquipNotification();
                    },
                  ));
              }, icon: Icon(Icons.menu), label: Text('')),
          title: Text('Dashboard'),
          actions: [
            TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return EquipProfile();
                    },
                  ),
                  );
                },
                icon: Icon(Icons.menu),
                label: Text('')),
            CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: const Text('ko'),
            ),
          ],
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    color: Colors.lightBlue,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                          //child: Card(
                          //color: Colors.lightBlueAccent,
                          child: Row(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('0'),
                                  SizedBox(
                                    width: 220,
                                  ),
                                  Icon(Icons.refresh_sharp),
                                ],
                              ),
                            ],
                          ),
                          // ),
                        ),
                        Text('Total Request'),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text('Views'),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(Icons.forward),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    color: Colors.redAccent,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('0'),
                            ),
                            SizedBox(
                              width: 40,
                            )
                          ],
                        ),
                        Text('Pending Request'),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Views'),
                              SizedBox(
                                width: 40,
                              ),
                              Icon(Icons.forward),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    color: Colors.greenAccent,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15.0, 5, 15, 5),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('0'),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                          ],
                        ),
                        Text('Compled Request'),
                        Divider(
                          color: Colors.black,
                        ),
                        Row(
                          children: [
                            Text(''),
                            SizedBox(
                              width: 40,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Center(
                child: Container(
                  color: Colors.greenAccent,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Equipment report'),
                            Text('Monthly'),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Text(
                          'No chart available',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.plus_one_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Resquest service'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.blueGrey,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.read_more),
                          SizedBox(
                            width: 10,
                          ),
                          Text('requests'),
                        ],
                      ),
                      Text('No item available yet'),
                    ],
                  ),
                ),
              ),
            )
            //),
          ],
        ),
      ),
    );
  }
}