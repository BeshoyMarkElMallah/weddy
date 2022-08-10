import 'package:flutter/material.dart';
import 'package:weddy/screens/Signin_Screen.dart';

class ProfileScreen extends StatefulWidget {
    static const routeName = "/ProfileScreen";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDownloadonWifi = true;
  bool isNotification = true;
  bool isBoldText = true;

  void navigateToSignin(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(SigninScreen.routename);
  }

  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: display.height,
          width: display.width,
          margin: EdgeInsets.symmetric(horizontal: display.width * 0.05),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: display.height * 0.05,
                      bottom: display.height * 0.01,
                      left: display.width * 0.04),
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: display.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Padding(
                        padding: EdgeInsets.only(top: display.height * 0.01),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "USERNAME",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: display.height * 0.01,
                            bottom: display.height * 0.01),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "tessst@gmail.com",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: display.height * 0.04),
                child: Container(
                  width: display.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListTile(
                        leading: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Language",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                      Divider(),
                      ListTile(
                        leading: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Address Book",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: display.height * 0.04),
                child: Container(
                  width: display.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListTile(
                        leading: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Notifications",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Switch(
                          inactiveThumbColor: Colors.purple,
                          activeColor: Colors.deepPurple,
                            value: isNotification,
                            onChanged: (value) {
                              setState(() {
                                isNotification = value;
                              });
                            }),
                      ),
                     
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: display.height * 0.04),
                child: Container(
                  width: display.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListTile(
                        leading: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Text Size",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                      Divider(),
                      ListTile(
                        leading: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Bold Text",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Switch(
                            value: isBoldText,
                            inactiveThumbColor: Colors.purple,
                          activeColor: Colors.deepPurple,
                            onChanged: (value) {
                              setState(() {
                                isBoldText = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () => navigateToSignin(context),
                child: Text(
                  "Sign out",
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image.asset("assets/weddy.png",fit: BoxFit.fill,height:200,),

            ],
          ),
        ),
      ),
    );
  }
}
