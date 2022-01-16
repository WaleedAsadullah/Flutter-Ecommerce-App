import 'package:flutter/material.dart';
import 'package:clothesshop/Shoppage.dart';
import 'package:clothesshop/Allvariable.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Cart"),
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
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: mycart.toSet().toList().length,
                  itemBuilder: (context, index) {
                    index = mycart.toSet().toList()[index];
                    return Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.05,
                          right: MediaQuery.of(context).size.width * 0.05,
                          left: MediaQuery.of(context).size.width * 0.05),
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.width * 0.30,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  // margin: EdgeInsets.all(
                                  //     MediaQuery.of(context).size.width * 0.005),
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('${product_image[index]}'),
                                      fit: BoxFit.fitHeight,
                                    ),
                                    // color: Colors.yellow,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0),
                                      child: Text(
                                        "${product_name[index]}",
                                        style: TextStyle(fontSize: 20),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0),
                                      child: Text(
                                        "\$50",
                                        style: TextStyle(fontSize: 14),
                                      ))
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      mycart.add(index);
                                    });
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                radius: 10.0,
                                backgroundColor: Colors.blue,
                                child: Text(
                                  "${mycart.where((c) => c == index).toList().length}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                height: 30,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      var count = mycart
                                          .where((c) => c == index)
                                          .toList()
                                          .length;
                                      if (count == 1) {
                                        showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                                  // title: const Text(
                                                  //     'AlertDialog Title'),
                                                  content: const Text(
                                                      'Do you want to remove from cart'),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(
                                                            context, 'Cancel');
                                                      },
                                                      child:
                                                          const Text('Cancel'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          mycart.remove(index);
                                                          Navigator.pop(
                                                              context, 'OK');
                                                        });
                                                      },
                                                      child: const Text('OK'),
                                                    ),
                                                  ],
                                                ));
                                      } else {
                                        mycart.remove(index);
                                      }
                                      print(count);
                                      print(mycart);
                                    });
                                  },
                                  child: Text(
                                    "−",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.1,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 0), // Shadow position
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Check out")),
                    Text("Total : ${50 * mycart.length}",style: TextStyle(fontSize: 23),)
                  ],
                ))
          ],
        ));
  }
}
