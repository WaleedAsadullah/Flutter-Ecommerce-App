import 'package:clothesshop/Bottombarr.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.height * 0.15,
                    backgroundImage: AssetImage(
                        'assets/profile.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Waleed Asad",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text("Email" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: Colors.orange),),
              subtitle: Text("waleedasad27@gmail.com",style: TextStyle(fontSize: 16,),),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text("Phone" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: Colors.orange),),
              subtitle: Text("0311-1043612",style: TextStyle(fontSize: 16,),),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text("Date of birth" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: Colors.orange),),
              subtitle: Text("06-Dec-1999",style: TextStyle(fontSize: 16,),),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text("City" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: Colors.orange),),
              subtitle: Text("Karachi",style: TextStyle(fontSize: 16,),),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Bottombarr(
        page: "profile",
      ),
    );
  }
}
