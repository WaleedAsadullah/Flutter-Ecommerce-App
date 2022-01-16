import 'package:clothesshop/Profile.dart';
import 'package:clothesshop/Shoppage.dart';
import 'package:clothesshop/search.dart';
import 'package:flutter/material.dart';

class Bottombarr extends StatefulWidget {
  const Bottombarr({Key? key, required this.page}) : super(key: key);
  final String page;
  @override
  _BottombarrState createState() => _BottombarrState();
}

class _BottombarrState extends State<Bottombarr> {
  @override
  Widget build(BuildContext context) {
    Color homecolor = Colors.black54;
    Color searchcolor = Colors.black54;
    Color profilecolor = Colors.black54;
    if (widget.page == "home") {
      homecolor = Colors.orange;
    }
    if (widget.page == "search") {
      searchcolor = Colors.orange;
    }
    if (widget.page == "profile") {
      profilecolor = Colors.orange;
    }
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Container(
            height: MediaQuery.of(context).size.height * 0.045,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Shoppage()));
              },
              child: Icon(
                Icons.home,
                color: homecolor,
                size: 30,
              ),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: MediaQuery.of(context).size.height * 0.045,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Search()));
              },
              child: Icon(
                Icons.search_outlined,
                color: searchcolor,
                size: 30,
              ),
            ),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: MediaQuery.of(context).size.height * 0.045,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Icon(
                Icons.person,
                color: profilecolor,
                size: 30,
              ),
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
