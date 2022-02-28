import 'package:flutter/material.dart';

class RequestBooking extends StatefulWidget {
  const RequestBooking({ Key? key }) : super(key: key);

  @override
  _RequestBookingState createState() => _RequestBookingState();
}

class _RequestBookingState extends State<RequestBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Resquest Booking'),
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