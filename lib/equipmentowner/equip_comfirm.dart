import 'package:farmers_konekt/equipmentowner/equip_activate.dart';
import 'package:farmers_konekt/homeview/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class EquipComfirm extends StatefulWidget {
  const EquipComfirm({Key? key}) : super(key: key);

  @override
  _EquipComfirmState createState() => _EquipComfirmState();
}

class _EquipComfirmState extends State<EquipComfirm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String _code = '';
    bool _onEditing = false;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            VerificationCode(
              textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
              keyboardType: TextInputType.number,
              underlineColor: Colors
                  .amber, // If this is null it will use primaryColor: Colors.red from Theme
              length: 4,
              cursorColor:
                  Colors.blue, // If this is null it will default to the ambient
              // clearAll is NOT required, you can delete it
              // takes any widget, so you can implement your design
              clearAll: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'clear all',
                  style: TextStyle(
                      fontSize: 14.0,
                      decoration: TextDecoration.underline,
                      color: Colors.blue[700]),
                ),
              ),
              onCompleted: (String value) {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            Row(
              children: [
                Text("Don't have the code"),
                TextButton(onPressed: () {}, child: Text('Resend code')),
              ],
            ),
            TextButton(
                onPressed: () {
                  bool isValid = _formKey.currentState!.validate();
                  if (isValid) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return EquipActivate();
                      }),
                    );
                  }
                },
                child: Text('Activate')),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                },
                child: Text('Back to login')),
          ],
        ),
      ),
    );
  }
}
