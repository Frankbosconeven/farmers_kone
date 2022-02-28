import 'package:farmers_konekt/farmer/comfirm.dart';
import 'package:farmers_konekt/farmer/dashboard.dart';
import 'package:farmers_konekt/farmer/signup.dart';
import 'package:farmers_konekt/fbo/fbo_signup.dart';
import 'package:farmers_konekt/password/forgotten.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController unamecontroller = new TextEditingController();
  TextEditingController pwcontroller = new TextEditingController();

  String _message = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text(''),
        ),
        body: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        //child: Text('Sign in'),
                        ),
                  ),
                  Row(
                    children: [
                      Image.asset('images/facebook.png.png'),
                      SizedBox(
                        width: 3,
                      ),
                      Text('Facebook')
                    ],
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter Username',
                      labelText: 'Enter your Email/Phone',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your first Name';
                      } else if (!value.contains('@')) {
                        return 'please enter proper';
                      }
                      ;
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.lock),
                      hintText: 'Enter Password',
                      labelText: 'Enter your Password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your password';
                      } else if (int.tryParse(value) == null || value.isEmpty) {
                        return 'please ent a value';
                      }
                      ;
                      return null;
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        bool isValid = _formKey.currentState!.validate();
                        if (isValid) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Forgotten();
                            }),
                          );
                        }
                      },
                      child: Text('Forgotten password')),
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
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Don't have account? Register as",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FboSignup()),
                                );
                              },
                              child: Text('Fbo')),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp(),),
                                );
                              },
                              child: Text('Farmer')),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()),
                                );
                              },
                              child: Text('Farmer')),
                        ],
                      ),
                    ),
                  ),
                  //Text('Sign in with'),
                  //TextButton(onPressed: () {}, child: Text('')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}