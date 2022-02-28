import 'package:farmers_konekt/equipmentowner/equip_comfirm.dart';
import 'package:farmers_konekt/homeview/home_view.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EquipSignup extends StatefulWidget {
  const EquipSignup({ Key? key }) : super(key: key);

  @override
  _EquipSignupState createState() => _EquipSignupState();
}

class _EquipSignupState extends State<EquipSignup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController unamecontroller = new TextEditingController();
  TextEditingController pwcontroller = new TextEditingController();
  String _dropDownValue = "choose your district";

  String _message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Farmer'),
      ),
      body: Container(
        child: Center(
          child: Form(
            child: ListView(
              children: <Widget>[
                Text('Signup now'),
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
                    icon: const Icon(Icons.person),
                    hintText: 'Enter Password',
                    labelText: 'Enter Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your Pasword';
                    } else if (!value.contains('@')) {
                      return 'please enter proper';
                    }
                    ;
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter Password',
                    labelText: 'Comfirm Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Comfirm Pasword';
                    } else if (!value.contains('@')) {
                      return 'please enter proper';
                    }
                    ;
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter Your equip. name',
                    labelText: 'Equipment Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your fullName';
                    } else if (!value.contains('@')) {
                      return 'please enter proper character';
                    }
                    ;
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your equip. registrer number',
                    labelText: 'Enter equip. registrer number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'fill in your the details';
                    } else if (!value.contains('@')) {
                      return 'please enter proper';
                    }
                    ;
                    return null;
                  },
                ),
                Text('Choose your account type'),
                ToggleSwitch(
                      fontSize: 16.0,
                      initialLabelIndex: 1,
                      activeBgColor: [Colors.green],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.grey[900],
                      totalSwitches: 2,
                      labels: [
                        'Individual',
                        'Company',
                      ],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                Text('choose gender'),
                Row(
                  children: [
                    ToggleSwitch(
                      fontSize: 16.0,
                      initialLabelIndex: 1,
                      activeBgColor: [Colors.green],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.grey[900],
                      totalSwitches: 2,
                      labels: [
                        'Male',
                        'Female',
                      ],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ],
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
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Address',
                    labelText: '',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'fill in your the details';
                    } else if (!value.contains('@')) {
                      return 'please enter proper';
                    }
                    ;
                    return null;
                  },
                ),
                DropdownButton(
                    hint: _dropDownValue == null
                        ? Text("Dropdown")
                        : Text(_dropDownValue),
                    isExpanded: true,
                    iconSize: 30,
                    items: [
                      "School of Biological Sciences",
                      "School of Agriculture",
                      "Business School",
                      "Business School",
                    ].map((val) {
                      return DropdownMenuItem<String>(
                        alignment: AlignmentDirectional.center,
                        value: val,
                        child: Text(val),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _dropDownValue = val as String;
                      });
                    }),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('choose your region'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButton(
                      hint: _dropDownValue == null
                          ? Text("Dropdown")
                          : Text(_dropDownValue),
                      isExpanded: true,
                      iconSize: 30,
                      items: [
                        "Ahafo Region - Goaso",
                        "Ashanti Region - Kumasi",
                        "Business School",
                        "Business School",
                        "Bono East Region - Techiman",
                        "Bono East Region - Techiman",
                        "Eastern Region - Koforidua",
                        "North East Region - Nalerigu",
                        "Oti Region - Dambai",
                        "Northern Region - Tamale",
                        "Savannah Region - Damango",
                        "Northern Region - Tamale",
                        "Upper West Region - Wa",
                        "Volta Region - Ho",
                        "Western North Region- Sefwi Wiawso",
                        "Western Region - Sekondi",
                        

                      ].map((val) {
                        return DropdownMenuItem<String>(
                          alignment: AlignmentDirectional.center,
                          value: val,
                          child: Text(val),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          _dropDownValue = val as String;
                        });
                      }),
                ),
                TextField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.location_city)
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your Farm location',
                    labelText: 'Fnter farm location',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'fill in your the details';
                    } else if (!value.contains('@')) {
                      return 'please enter proper';
                    }
                    ;
                    return null;
                  },
                ),
                TextButton(onPressed: (){
                  bool isValid = _formKey.currentState!.validate();
                  if (isValid){
                    Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return EquipComfirm();
                            }),
                          );
                  }
                  }, child: Text('Signup')),
                  TextButton(onPressed: (){
                  bool isValid = _formKey.currentState!.validate();
                  if (isValid){
                    Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Login();
                            }),
                          );
                  }
                  }, child: Text('Login')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}