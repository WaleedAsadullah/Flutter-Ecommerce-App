import 'package:clothesshop/Shoppage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}
String getpass ="";
class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 120),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/1.gif",
                // height: 250.0,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width * 0.05,
                    // top: MediaQuery.of(context).size.width * 0.05,
                    left: MediaQuery.of(context).size.width * 0.15,
                    right: MediaQuery.of(context).size.width * 0.15),
                child: TextField(
                  // cursorRadius: ,
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width * 0.05,
                    left: MediaQuery.of(context).size.width * 0.15,
                    right: MediaQuery.of(context).size.width * 0.15),
                child: TextField(
                  onChanged: (value) {
                          getpass = value;
                        },
                  // cursorRadius: ,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Password (123)',
                  ),
                ),
              ),
              
              ElevatedButton(
              onPressed: () {
                if(getpass=="123"){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Shoppage()));
                }else{
                  showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Wrong Password'),
                            content:  Text('Please try again'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () { 
                                  Navigator.pop(context, 'OK');},
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                }
              }, child: Container(
                width: MediaQuery.of(context).size.width*0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login_rounded,),
                    Text("  Sign In",style: TextStyle(fontSize: 18,),),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
