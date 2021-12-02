import 'package:flutter/material.dart';
import 'profile.dart';

const iconsPath = 'assets/icons/';
const imagePath = 'assets/images/';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media Profile Screen',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  final List<Widget> children = [
    Profile(Colors.teal),
    // Profile(Colors.white),
    // Profile(Colors.white70),
    // Profile(Colors.white70),
    // Profile(Colors.white70),
  ];
  void onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_selectedIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   backgroundColor: Colors.lightBlue,
      //   currentIndex: _selectedIndex,
      //   fixedColor: Colors.black,
      //   unselectedItemColor: Colors.black,
      //   onTap: onSelected,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.video_library),
      //       label: "Video",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_bag),
      //       label: "Bag",
      //     ),
      //     BottomNavigationBarItem(
      //       label: "Profile",
      //       icon: Image.asset(
      //         "assets/images/avatar.png",
      //         width: 30,
      //         height: 30,
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
