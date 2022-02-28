import 'package:farmers_konekt/fbo/fbo_activate_account.dart';
import 'package:farmers_konekt/fbo/fbo_dashboard.dart';
import 'package:farmers_konekt/homeview/home_view.dart';
import 'package:flutter/material.dart';

class FboActivate extends StatefulWidget {
  const FboActivate({ Key? key }) : super(key: key);

  @override
  _FboActivateState createState() => _FboActivateState();
}

class _FboActivateState extends State<FboActivate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'CONGRATULATION',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 50,
            ),
            Text('Your account has been successful'),
            SizedBox(
              width: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FboActivateAccount()),
                  );
                },
                child: Text('Next')),
          ],
        ),
      ),
    );
  }
}