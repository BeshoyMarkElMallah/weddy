import 'package:flutter/material.dart';
import 'package:weddy/screens/CartScreen.dart';
import 'package:weddy/screens/profileScreen.dart';
import 'package:weddy/widgets/home.dart';
import 'package:weddy/widgets/side_drawer.dart';
// import 'package:google_fonts/google_fonts.dart';


// import '../widgets/customsearchbar.dart';
// import 'Signin_Screen.dart';
// import '../widgets/custom_horizontal_list.dart';


class HomePage extends StatefulWidget {
  static const routeName = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
   
    // Text(
    //   'Chat',
    //   style: optionStyle,
    // ),
    Text(
      'Favourites',
      style: optionStyle,
    ),

     CartScreen(),
    ProfileScreen(),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      drawer: SizedBox(
        child: SideDrawer(),
        // color: Colors.white,
        width: MediaQuery.of(context).size.width / 1.5,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favourites',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat),
          //   label: 'Chat',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
