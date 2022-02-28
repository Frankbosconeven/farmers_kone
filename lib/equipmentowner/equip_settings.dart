import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class EquipSettings extends StatefulWidget {
  const EquipSettings({Key? key}) : super(key: key);

  @override
  _EquipSettingsState createState() => _EquipSettingsState();
}

class _EquipSettingsState extends State<EquipSettings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Container(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Configure Alerts'),
                          subtitle:
                              Text('Enable or disable alert notifications'),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Automatically check update',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "We'll check and notify you when newer version arrives"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ToggleSwitch(
                                    fontSize: 16.0,
                                    initialLabelIndex: 1,
                                    activeBgColor: [Colors.green],
                                    activeFgColor: Colors.white,
                                    inactiveBgColor: Colors.grey,
                                    inactiveFgColor: Colors.grey[900],
                                    totalSwitches: 2,
                                    labels: [
                                      'Yes',
                                      'No',
                                    ],
                                    onToggle: (index) {
                                      print('switched to: $index');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('About Us'),
                            subtitle: Text(
                                'Farmers Konekt is an agricultural mechanization comapany that makes equipments available , accessible and affordable using IOT tecnology. Read more about us on'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('www.farmerskonkt.com'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
