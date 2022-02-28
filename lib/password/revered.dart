import 'package:flutter/material.dart';

class Recoverd extends StatefulWidget {
  const Recoverd({ Key? key }) : super(key: key);

  @override
  _RecoverdState createState() => _RecoverdState();
}

class _RecoverdState extends State<Recoverd> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController unamecontroller = new TextEditingController();
  TextEditingController pwcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Change PAssword'),
          ),
          body: Container(
            key: _formKey,
            child: Form(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      "Change Password",
                      style: TextStyle(),
                    ),
                    subtitle: const Text('Replace the current password'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your old Password',
                      labelText: 'Enter old password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your old password';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your new password',
                      labelText: 'Enter new password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your new password';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.person),
                        hintText: 'Enter your comfirm password',
                        labelText: 'Enter comfirm password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your comfirm password';
                        }
                        return null;
                      },
                      ),
                      TextButton(
                        onPressed: (){}, 
                        child: Text('Change Password'),
                      ),
                ],
              ),
            ),
          )),
    );
  }
}