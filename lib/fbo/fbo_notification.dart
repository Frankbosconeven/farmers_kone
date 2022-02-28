import 'package:flutter/material.dart';

class FboNotification extends StatefulWidget {
  const FboNotification({ Key? key }) : super(key: key);

  @override
  _FboNotificationState createState() => _FboNotificationState();
}

class _FboNotificationState extends State<FboNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Stack(
          children: [
            Icon(Icons.folder_open_outlined),
            SizedBox(
              width: 30,
            ),
            Text('Ooop! there is nothing here'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.request_page,
            ),
            label: 'request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
          ),
        ],
      ),
    );
  }
}