import 'package:flutter/material.dart';
class Aboutpage extends StatefulWidget {
  const Aboutpage({ Key? key }) : super(key: key);

  @override
  _AboutpageState createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: Icon(Icons.favorite_sharp),
    ) ,);
  }
}