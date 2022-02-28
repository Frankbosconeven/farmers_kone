import 'package:farmers_konekt/fbo/fbo_dashboard.dart';
import 'package:farmers_konekt/homeview/home_view.dart';
import 'package:flutter/material.dart';

class Activate extends StatefulWidget {
  const Activate({Key? key}) : super(key: key);

  @override
  _ActivateState createState() => _ActivateState();
}

class _ActivateState extends State<Activate> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text('Back to Login'),),
                TextButton(onPressed: (){
                  bool isValid = _formKey.currentState!.validate();
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FboDashBoard()),
                      );
                }, child: Text('Click here continue'))
          ],
        ),
      ),
    );
  }
}
