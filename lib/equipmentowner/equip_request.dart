import 'package:flutter/material.dart';

class EquipRequest extends StatefulWidget {
  const EquipRequest({ Key? key }) : super(key: key);

  @override
  _EquipRequestState createState() => _EquipRequestState();
}

class _EquipRequestState extends State<EquipRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Resquest'),
        actions: [
          Icon(Icons.search),
          Icon(Icons.notifications),
          CircleAvatar(
            backgroundColor: Colors.redAccent,
            child: Text('SA'),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(color: Colors.red, width: 4.0),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Resquest service',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        Text(
                          'Resquest service',
                        ),
                        Text('Resquest service'),
                        Text('Resquest service'),
                        Row(
                          children: [
                            Text('Resquest service'),
                            Text('Resquest service'),
                            Text('Resquest service'),
                            Text('Resquest service'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.folder_open),
                      Text('Resquest service'),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          child:
          Icon(Icons.thumb_up);
        },
      ),
    );
  }
}