import 'package:clothesshop/Cartpage.dart';
import 'package:clothesshop/Favoritepage.dart';
import 'package:clothesshop/Loginpage.dart';
import 'package:clothesshop/Profile.dart';
import 'package:flutter/material.dart';

class Drawerr extends StatefulWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  _DrawerrState createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 130,
            child: DrawerHeader(
              child: ListTile(
                contentPadding: EdgeInsets.only(right: 0),
                title: Text("Waleed Asad"),
                subtitle: Text("waleedasad27@gmail.com"),
                leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg')),
              ),
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.adjust_rounded,
              color: Colors.white,
            ),
            tileColor: Colors.white,
            leading: Icon(
              Icons.logout_rounded,
              color: Colors.black54,
            ),
            title: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Loginpage()));
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Logout",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        // fontSize: 14,
                        color: Colors.black87,
                      )),
                )),
          ),
          ListTile(
            trailing: Icon(
              Icons.adjust_rounded,
              color: Colors.white,
            ),
            tileColor: Colors.white,
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.black54,
            ),
            title: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cartpage()));
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("My cart",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      // fontSize: 14,
                      color: Colors.black87,
                    )),
              ),
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            tileColor: Colors.white,
            leading: Icon(
              Icons.favorite,
              color: Colors.black54,
            ),
            title: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favoritepage()));
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Favourite",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        // fontSize: 14,
                        color: Colors.black87,
                      )),
                )),
          ),
          ListTile(
            trailing: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            tileColor: Colors.white,
            leading: Icon(
              Icons.person,
              color: Colors.black54,
            ),
            title: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("My Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        // fontSize: 14,
                        color: Colors.black87,
                      )),
                )),
          ),
        ],
      ),
    );
  }
}
