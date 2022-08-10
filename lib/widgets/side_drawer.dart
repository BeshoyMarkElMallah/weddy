import 'package:flutter/material.dart';
import 'package:weddy/screens/CategoriesScreen.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
void navigateToCategoriesScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoriesScreen.routeName);
  }




  @override
  Widget build(BuildContext context) {
    // var drawerWidth = MediaQuery.of(context).size.width / 1.5;
    return Drawer(
      elevation: 20,
      child: Container(
        color: Colors.deepPurple.withOpacity(0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 90,
            ),
            
            ListTile(
              title: Text(
                "User Name",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                "User Account",
                 style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              onTap: () {},
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 40,
              ),
              title: Text(
                "My Account",
                style: TextStyle(fontSize: 20),
              ),
              contentPadding: EdgeInsets.only(left: 20.0),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.category,
                size: 40,
              ),
              title: Text(
                "Categories",
               style: TextStyle(fontSize: 20),
              ),
              contentPadding: EdgeInsets.only(left: 20.0),
              onTap: () =>navigateToCategoriesScreen(context),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 40,
              ),
              title: Text(
                "Notifications",
               style: TextStyle(fontSize: 20),
              ),
              contentPadding: EdgeInsets.only(left: 20.0),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 40,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
              contentPadding: EdgeInsets.only(left: 20.0),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.report_problem,
                size: 40,
              ),
              title: Text(
                "Help",
               style: TextStyle(fontSize: 20),
              ),
              contentPadding: EdgeInsets.only(left: 20.0),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                size: 40,
              ),
              title: Text(
                "About",
                style: TextStyle(fontSize: 20),
              ),
              contentPadding: EdgeInsets.only(left: 20.0),
              onTap: () {},
            ),
            Spacer(),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 40,
              ),
              title: Text(
                "Log out",
                style: TextStyle(fontSize: 16),
              ),
              contentPadding: EdgeInsets.only(left: 20.0),
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
