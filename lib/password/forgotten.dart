import 'package:farmers_konekt/farmer/dashboard.dart';
import 'package:flutter/material.dart';

class Forgotten extends StatefulWidget {
  const Forgotten({ Key? key }) : super(key: key);

  @override
  _ForgottenState createState() => _ForgottenState();
}

class _ForgottenState extends State<Forgotten> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController unamecontroller = new TextEditingController();
  TextEditingController pwcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Forgotten Password'),
        ),
        body: Container(
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(child: Text('enter you recovery credentials')),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your recover email/phone',
                    labelText: 'Enter your Email/Phone',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '';
                    }
                    ;
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('or go back to login')),
                ),
                TextButton(
                  onPressed: () {
                    bool isValid = _formKey.currentState!.validate();
                    if (isValid) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DashBoard();
                          },
                        ),
                      );
                    }
                  },
                  child: Text('Submit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}