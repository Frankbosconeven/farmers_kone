import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class FboChangeNumber extends StatefulWidget {
  const FboChangeNumber({ Key? key }) : super(key: key);

  @override
  _FboChangeNumberState createState() => _FboChangeNumberState();
}

class _FboChangeNumberState extends State<FboChangeNumber> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Phone Field Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'fullName',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Farm location',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                // MaterialButton(
                //   child: Text('Submit'),
                //   color: Theme.of(context).primaryColor,
                //   textColor: Colors.white,
                //   onPressed: () {
                //     _formKey.currentState!.validate();
                //   },
                // ),
                TextButton(onPressed: (){
                  Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => FboChangeNumber()),
                                        );
                }, child: Text('Next')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}