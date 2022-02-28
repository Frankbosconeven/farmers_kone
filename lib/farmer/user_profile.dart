
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, 
        icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: (){}, 
          icon: const Icon(Icons.more_vert),
          )],
          // CircleAvatar(
          //   backgroundColor: Colors.redAccent,
          // ),
          // TextButton.icon(
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) {
          //       return UserProfileSettings();
          //     }));
          //   },
          //   icon: Icon(Icons.menu),
          //   label: Text(''),
          // ),
          // PopupMenuButton(
          //   initialValue: 2,
          //   child: Center(child: Text('click here')),
          //   itemBuilder: (context) {
          //     return List.generate(5, (index) {
          //       return PopupMenuItem(
          //         value: index,
          //         child: Text('button no $index'),
          //       );
          //     });
          //   },
          // ),
        
        bottom: const PreferredSize(child: Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
          ),
        ), 
        preferredSize: Size.fromHeight(80)),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            // height: 150.0,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  Text(
                    "Seth Abbey",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "UserName",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Frankbosconeven",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  "Name",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Seth Abbey",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  "Phone number",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "0542608681",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "frankbosconeven@gmail.com",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  "Location",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Twifu Praso",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  "Region",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Central",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  "Age",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "25",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  "Country",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Ghana",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.pinkAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
