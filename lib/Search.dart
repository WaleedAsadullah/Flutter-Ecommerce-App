import 'package:clothesshop/Bottombarr.dart';
import 'package:flutter/material.dart';
import 'package:clothesshop/Allvariable.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

var search = [];
var countcart = 0;

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 0), // Shadow position
                ),
              ],
            ),
            child: TextField(
              
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  hintText: 'Enter a search'),
              onChanged: (text) {
                setState(() {
                  text = text.toLowerCase();
                  var j = 0;
                  search = [];
                  for (var i in product_name) {
                    i = i.toLowerCase();
                    if (i.contains(text) && text.length != 0) {
                      search.add(j);
                    }
                    j++;
                    print(search);
                  }

                  // print('First text field: $text');
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: search.length,
                itemBuilder: (context, index) {
                  index = search[index];
                  var myIcon;
                  if (!favorite.contains(index)) {
                    myIcon = Icons.favorite_outline;
                  } else {
                    myIcon = Icons.favorite;
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
                                            countcart =
                                                mycart.toSet().toList().length;
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
      bottomNavigationBar: Bottombarr(
        page: "search",
      ),
    );
  }
}
