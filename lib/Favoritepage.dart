import 'package:flutter/material.dart';
import 'package:clothesshop/Shoppage.dart';
import 'package:clothesshop/Cartpage.dart';
import 'package:clothesshop/Allvariable.dart';
class Favoritepage extends StatefulWidget {
  const Favoritepage({ Key? key }) : super(key: key);

  @override
  _FavoritepageState createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Favourite"),
          actions: [
            Icon(Icons.favorite),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
            Stack(children: [
              Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cartpage()));
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
            // Row(
            //   children: [],
            // )
          ],
        ),
        body: Container(
          child: ListView.builder(
              itemCount: favorite.length,
              itemBuilder: (context, index) {
                index = favorite[index];
                // print(index);
                return Container(
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
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
                                  MediaQuery.of(context).size.width * 0.03),
                              child: TextButton(onPressed: (){
                                setState(() {
                                  favorite.remove(index);
                                  print(index);
                                });
                              },
                                child: Icon(
                                  Icons.favorite,
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
                                  MediaQuery.of(context).size.width * 0.05),
                              child: Column(
                                children: [
                                  Text(
                                    "\$50",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
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
                                product_name[index],
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ))),
                      Center(
                        child: Container(
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.width * 0.005),
                            width: MediaQuery.of(context).size.width * .5,
                            height: MediaQuery.of(context).size.height * 0.20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    product_image[index],),
                                fit: BoxFit.fitHeight,
                              ),
                              // color: Colors.yellow,
                            )),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}