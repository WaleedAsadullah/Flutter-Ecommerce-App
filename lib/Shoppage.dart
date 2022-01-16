import 'package:clothesshop/Bottombarr.dart';
import 'package:clothesshop/Cartpage.dart';
import 'package:clothesshop/Drawerr.dart';
// import 'package:clothesshop/Drawerr.dart';
import 'package:clothesshop/Favoritepage.dart';
import 'package:clothesshop/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:clothesshop/Allvariable.dart';

List allcart = [];
List cartlinks = [];

List fallcart = [];
List fcartlinks = [];
var countcart = 0;

class Shoppage extends StatefulWidget {
  const Shoppage({Key? key}) : super(key: key);

  @override
  _ShoppageState createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          Container(
              // width: 10,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Favoritepage()));
                  },
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ))),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          Stack(children: [
            Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cartpage()));
                    },
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ))),
            Positioned(
              top: 10,
              right: 10,
              child: CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.red,
                child: Text(
                  "${countcart}",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ]),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
        ],
      ),
      drawer: Drawerr(),
      body: Column(
        children: [
          // Container(
          //   height: MediaQuery.of(context).size.width * 0.28,
          //   child: Expanded(
          //     child: ListView.builder(
          //         shrinkWrap: true,
          //         scrollDirection: Axis.horizontal,
          //         itemCount: topbarname.length,
          //         itemBuilder: (context, index) {
          //           return Container(
          //             // color: Colors.white,
          //             margin: EdgeInsets.only(
          //                 top: MediaQuery.of(context).size.width * 0.05,
          //                 left: MediaQuery.of(context).size.width * 0.05,
          //                 bottom: MediaQuery.of(context).size.width * 0.02),
          //             width: MediaQuery.of(context).size.width * 0.6,
          //             // height: MediaQuery.of(context).size.width * 0.1,
          //             decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(20),
          //               boxShadow: [
          //                 BoxShadow(
          //                   color: Colors.black26,
          //                   blurRadius: 4,
          //                   offset: Offset(0, 0), // Shadow position
          //                 ),
          //               ],
          //             ),
          //             child: ListTile(
          //               leading: Image.asset(
          //                   topbarimg[index]),
          //               title: Row(
          //                 // mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Text(
          //                     "${topbarname[index]}",
          //                     style: TextStyle(
          //                         fontSize: 20, fontWeight: FontWeight.bold),
          //                   ),
          //                 ],
          //               ),
          //               subtitle: Row(
          //                 // mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Text("10 Pieces left  "),
          //                 ],
          //               ),
          //             ),
          //           );
          //         }),
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: product_name.length,
                itemBuilder: (context, index) {
                  var myIcon;
                  if (!favorite.contains(index)) {
                  myIcon =  Icons.favorite_outline;
                  }else{
                  myIcon =  Icons.favorite;
                  }
                  return Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.03,
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05,
                        bottom: MediaQuery.of(context).size.width * 0.03),
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.01),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      // print(index);
                                      // print(favorite);
                                      if (favorite.length > 0) {
                                        // for (int i in favorite) {
                                          // print(i);
                                          if (!favorite.contains(index)) {
                                            // print("work");
                                            favorite.add(index);
                                          }
                                        // }
                                      } else {
                                        favorite.add(index);
                                      }
                                      
                                    });
                                  },
                                  child: Icon(
                                   myIcon,
                                    size: 30,
                                    color: Colors.red,
                                  ),
                                ))),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.03),
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.018),
                                child: Text(
                                  "30% off",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ))),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                                margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.03),
                                child: Column(
                                  children: [
                                    Text(
                                      "\$50",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            mycart.add(index);
                                            countcart = mycart.toSet().toList().length;
                                            print(mycart);
                                          });
                                        },
                                        child: Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Colors.black87,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ))),
                        Positioned(
                            bottom: 26,
                            left: 0,
                            child: Container(
                                margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.03),
                                child: Text(
                                  "${product_name[index]}",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ))),
                        Center(
                          child: Container(
                              margin: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.005),
                              width: MediaQuery.of(context).size.width * .5,
                              height: MediaQuery.of(context).size.height * 0.20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('${product_image[index]}'),
                                  fit: BoxFit.fitHeight,
                                ),
                                // color: Colors.yellow,
                              )),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: Bottombarr(page:"home"),
    );
  }
}
