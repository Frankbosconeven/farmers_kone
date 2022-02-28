import 'package:farmers_konekt/homeview/home_view.dart';
import 'package:flutter/material.dart';

class EquipActivateAccount extends StatefulWidget {
  const EquipActivateAccount({Key? key}) : super(key: key);

  @override
  _EquipActivateAccountState createState() => _EquipActivateAccountState();
}

class _EquipActivateAccountState extends State<EquipActivateAccount> {
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
                child: Text('Back to Login')),
          ],
        ),
      ),
    );
  }
}
