import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portable_cash_register/allCategories.dart';
import 'package:portable_cash_register/editItem.dart';
import '../Models/categories.dart';

class Grocery extends StatefulWidget {
  Grocery({Key? key}) : super(key: key);

  @override
  State<Grocery> createState() => _Grocery();
}

class _Grocery extends State<Grocery> {
  @override
  void initState() {}

  String dropdownvalue = 'High to Low';

  var items = [
    'High to Low',
    'Low to High',
  ];

  var size, height, width;
  final List<Categories> loadedCategory = [
    Categories(
      itemName: 'Meat',
      price: 1600.0,
      size: '1000g',
      images: 'assets/images/meat.png',
    ),
    Categories(
      itemName: 'Oil     ',
      price: 480.0,
      size: '1000g',
      images: 'assets/images/oil.png',
    ),
    Categories(
      itemName: 'Cereal',
      price: 360.0,
      size: '200g',
      images: "assets/images/cereals.png",
    ),
    Categories(
      itemName: 'Bread ',
      price: 200.0,
      size: '500g',
      images: 'assets/images/bread.png',
    ),
    Categories(
      itemName: 'Eggs  ',
      price: 180.0,
      size: '12',
      images: 'assets/images/eggs.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            // appBar: AppBar(
            //   title: Text('listttt vieww'),
            // ),
            body: Scaffold(
              backgroundColor: Color.fromARGB(255, 206, 233, 255),
              body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 62, left: 0),
                        child: Stack(children: [
                          Image.asset('assets/images/blue2.png'),
                          Stack(children: [
                            Container(
                              margin: EdgeInsets.only(left: 14, top: 20),
                              width: 365,
                              height: 660,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 300, top: 0),
                              width: 100,
                              height: 100,
                              child: Image.asset(
                                'assets/images/profile.png',
                                height: 100,
                                width: 100,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 0, top: 0),
                                      child: Image.asset(
                                        'assets/images/ellipse.png',
                                        height: 220,
                                        width: 220,
                                      ),
                                    ),
                                    InkWell(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 20),
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                          size: 32.0,
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    allCategories()));
                                      },
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 37, top: 37),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 4),
                                        child: Icon(
                                          Icons.remove_red_eye,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          size: 65.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 50, top: 112),
                                      child: Text('View Items',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                          )),
                                    ),
                                    Stack(children: [
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 170, top: 130),
                                          child: Text(
                                            'Sort By',
                                            style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 9, 5, 87),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                            ),
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 220, top: 120),
                                        width: 155,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(80, 45))),
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: DropdownButton(
                                              underline: Container(),
                                              // Initial Value
                                              value: dropdownvalue,

                                              // Down Arrow Icon
                                              icon: const Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Color.fromARGB(
                                                    255, 9, 5, 87),
                                                size: 30.0,
                                              ),

                                              // Array list of items
                                              items: items.map((String items) {
                                                return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(
                                                    'Price: $items',
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 9, 5, 87),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              // After selecting the desired option,it will
                                              // change button value to selected value
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  dropdownvalue = newValue!;
                                                });
                                              },
                                            )),
                                      )
                                    ]),
                                    Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 56, top: 200),
                                          width: 280,
                                          height: 55,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 9, 5, 87),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 75, top: 202),
                                          width: 50,
                                          height: 50,
                                          child: Image.asset(
                                              'assets/images/grocery.png'),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 160, top: 217),
                                          child: Text(
                                            'Grocery',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 280, left: 45),
                                      height: 300, //half of the height size
                                      width: 300,
                                      child: ListView.builder(
                                        itemBuilder: (BuildContext, index) {
                                          return Card(
                                            margin: EdgeInsets.only(bottom: 20),
                                            color: Color.fromARGB(
                                                255, 206, 233, 255),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: ListTile(
                                              leading: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    loadedCategory
                                                        .elementAt(index)
                                                        .images
                                                        .toString()),
                                              ),
                                              title: Row(
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      loadedCategory
                                                          .elementAt(index)
                                                          .itemName
                                                          .toString(),
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 9, 5, 87),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 19,
                                                      ),
                                                      textAlign:
                                                          TextAlign.right,
                                                      // style: TextStyle(
                                                      //     fontSize: 18,
                                                      //     color: Colors.black),
                                                    ),
                                                  ),
                                                  Column(children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 90),
                                                      child: Align(
                                                        //alignment: Alignment.center,
                                                        child: Text(
                                                          'Rs. ' +
                                                              loadedCategory
                                                                  .elementAt(
                                                                      index)
                                                                  .price
                                                                  .toString(),
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    9,
                                                                    5,
                                                                    87),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 7,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 90),
                                                      child: Text(
                                                          loadedCategory
                                                              .elementAt(index)
                                                              .size
                                                              .toString(),
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    9,
                                                                    5,
                                                                    87),
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontSize: 12,
                                                          )),
                                                    )
                                                  ])
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        itemCount: loadedCategory.length,
                                        shrinkWrap: true,
                                        padding: EdgeInsets.all(5),
                                        scrollDirection: Axis.vertical,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ])
                        ]))
                  ]),
            )));
  }
}

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       backgroundColor: Color.fromARGB(255, 206, 233, 255),
  //       body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
  //         Container(
  //             margin: const EdgeInsets.only(top: 62, left: 0),
  //             child: Stack(children: [
  //               Image.asset('assets/images/blue2.png'),
  //               Stack(children: [
  //                 Container(
  //                   margin: EdgeInsets.only(left: 14, top: 20),
  //                   width: 365,
  //                   height: 660,
  //                   decoration: BoxDecoration(
  //                       color: Colors.white,
  //                       borderRadius: BorderRadius.all(Radius.circular(50))),
  //                 ),
  //                 Container(
  //                   margin: EdgeInsets.only(left: 300, top: 0),
  //                   width: 100,
  //                   height: 100,
  //                   child: Image.asset(
  //                     'assets/images/profile.png',
  //                     height: 100,
  //                     width: 100,
  //                   ),
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.all(Radius.circular(50))),
  //                 ),
  //                 Row(children: [
  //                   Stack(children: [
  //                     Container(
  //                       margin: EdgeInsets.only(left: 0, top: 0),
  //                       child: Image.asset(
  //                         'assets/images/ellipse.png',
  //                         height: 220,
  //                         width: 220,
  //                       ),
  //                     ),
  //                     Container(
  //                       margin: EdgeInsets.only(left: 37, top: 37),
  //                       child: Padding(
  //                         padding: const EdgeInsets.only(left: 20, top: 4),
  //                         child: Icon(
  //                           Icons.remove_red_eye,
  //                           color: Color.fromARGB(255, 255, 255, 255),
  //                           size: 65.0,
  //                         ),
  //                       ),
  //                     ),
  //                     Container(
  //                       margin: EdgeInsets.only(left: 50, top: 112),
  //                       child: Text('View Items',
  //                           style: TextStyle(
  //                             color: Color.fromARGB(255, 255, 255, 255),
  //                             fontWeight: FontWeight.w600,
  //                             fontSize: 13,
  //                           )),
  //                     ),
  //                   ]),
  //                 ]),
  //                 Stack(children: [
  //                   Container(
  //                     margin: EdgeInsets.only(left: 150, top: 100),
  //                     width: 170,
  //                     height: 35,
  //                     decoration: BoxDecoration(
  //                         color: Colors.white,
  //                         borderRadius:
  //                             BorderRadius.all(Radius.elliptical(80, 45))),
  //                     child: Padding(
  //                         padding: const EdgeInsets.only(left: 8.0),
  //                         // child: DropdownButton<String>(
  //                         //   value: dropdownValue,
  //                         //   onChanged: (String? newValue) {
  //                         //     setState(() {
  //                         //       dropdownValue = newValue!;
  //                         //     });
  //                         //   },
  //                         //   items: <String>['High to Low', 'Low to High']
  //                         //       .map<DropdownMenuItem<String>>((String value) {
  //                         //     return DropdownMenuItem<String>(
  //                         //       value: value,
  //                         //       child: Text('Price: $value'),
  //                         //     );
  //                         //   }).toList(),
  //                         // ),

  //                         child: DropdownButton(
  //                           // Initial Value
  //                           value: dropdownvalue,

  //                           // Down Arrow Icon
  //                           icon: const Icon(Icons.keyboard_arrow_down),

  //                           // Array list of items
  //                           items: items.map((String items) {
  //                             return DropdownMenuItem(
  //                               value: items,
  //                               child: Text(items),
  //                             );
  //                           }).toList(),
  //                           // After selecting the desired option,it will
  //                           // change button value to selected value
  //                           onChanged: (String? newValue) {
  //                             setState(() {
  //                               dropdownvalue = newValue!;
  //                             });
  //                           },
  //                         )),
  //                   )
  //                 ]),
  //                 Column(
  //                   children: [
  //                     Stack(
  //                       children: [
  //                         Container(
  //                           margin: EdgeInsets.only(left: 56, top: 200),
  //                           width: 280,
  //                           height: 55,
  //                           decoration: BoxDecoration(
  //                               color: Color.fromARGB(255, 9, 5, 87),
  //                               borderRadius:
  //                                   BorderRadius.all(Radius.circular(10))),
  //                         ),
  //                         Container(
  //                           margin: EdgeInsets.only(left: 137, top: 217),
  //                           child: Text(
  //                             'Grocery',
  //                             style: TextStyle(
  //                                 color: Colors.white,
  //                                 fontSize: 22,
  //                                 fontWeight: FontWeight.w700),
  //                           ),
  //                         )
  //                       ],
  //                     ),
  //                     Stack(
  //                       children: [
  //                         Container(
  //                             margin: EdgeInsets.only(left: 50, top: 15),
  //                             width: 250,
  //                             height: 60,
  //                             decoration: BoxDecoration(
  //                                 color: Color.fromARGB(255, 206, 233, 255),
  //                                 borderRadius:
  //                                     BorderRadius.all(Radius.circular(10))),
  //                             child: Row(
  //                               children: [
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 14),
  //                                   child: Image.asset(
  //                                     'assets/images/grocery.png',
  //                                     height: 50,
  //                                     width: 50,
  //                                   ),
  //                                 ),
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 55, top: 15),
  //                                   width: 80,
  //                                   height: 45,
  //                                   child: Text(
  //                                     "Grocery",
  //                                     style: TextStyle(
  //                                       color: Color.fromARGB(255, 9, 5, 87),
  //                                       fontWeight: FontWeight.w600,
  //                                       fontSize: 22,
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ],
  //                             )),
  //                         Container(
  //                             margin: EdgeInsets.only(left: 50, top: 85),
  //                             width: 250,
  //                             height: 60,
  //                             decoration: BoxDecoration(
  //                                 color: Color.fromARGB(255, 206, 233, 255),
  //                                 borderRadius:
  //                                     BorderRadius.all(Radius.circular(10))),
  //                             child: Row(
  //                               children: [
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 14),
  //                                   child: Image.asset(
  //                                     'assets/images/toys.png',
  //                                     height: 50,
  //                                     width: 50,
  //                                   ),
  //                                 ),
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 70, top: 15),
  //                                   width: 80,
  //                                   height: 45,
  //                                   child: Text(
  //                                     "Toys",
  //                                     style: TextStyle(
  //                                       color: Color.fromARGB(255, 9, 5, 87),
  //                                       fontWeight: FontWeight.w600,
  //                                       fontSize: 22,
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ],
  //                             )),
  //                         Container(
  //                             margin: EdgeInsets.only(left: 50, top: 155),
  //                             width: 250,
  //                             height: 60,
  //                             decoration: BoxDecoration(
  //                                 color: Color.fromARGB(255, 206, 233, 255),
  //                                 borderRadius:
  //                                     BorderRadius.all(Radius.circular(10))),
  //                             child: Row(
  //                               children: [
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 14),
  //                                   child: Image.asset(
  //                                     'assets/images/electronics.png',
  //                                     height: 50,
  //                                     width: 50,
  //                                   ),
  //                                 ),
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 45, top: 15),
  //                                   width: 120,
  //                                   height: 45,
  //                                   child: Text(
  //                                     "Electronics",
  //                                     style: TextStyle(
  //                                       color: Color.fromARGB(255, 9, 5, 87),
  //                                       fontWeight: FontWeight.w600,
  //                                       fontSize: 22,
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ],
  //                             )),
  //                         Container(
  //                             margin: EdgeInsets.only(left: 50, top: 225),
  //                             width: 250,
  //                             height: 60,
  //                             decoration: BoxDecoration(
  //                                 color: Color.fromARGB(255, 206, 233, 255),
  //                                 borderRadius:
  //                                     BorderRadius.all(Radius.circular(10))),
  //                             child: Row(
  //                               children: [
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 14),
  //                                   child: Image.asset(
  //                                     'assets/images/garments.png',
  //                                     height: 50,
  //                                     width: 50,
  //                                   ),
  //                                 ),
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 50, top: 15),
  //                                   width: 110,
  //                                   height: 45,
  //                                   child: Text(
  //                                     "Garments",
  //                                     style: TextStyle(
  //                                       color: Color.fromARGB(255, 9, 5, 87),
  //                                       fontWeight: FontWeight.w600,
  //                                       fontSize: 22,
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ],
  //                             )),
  //                         Container(
  //                             margin: EdgeInsets.only(left: 50, top: 295),
  //                             width: 250,
  //                             height: 60,
  //                             decoration: BoxDecoration(
  //                                 color: Color.fromARGB(255, 206, 233, 255),
  //                                 borderRadius:
  //                                     BorderRadius.all(Radius.circular(10))),
  //                             child: Row(
  //                               children: [
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 14),
  //                                   child: Image.asset(
  //                                     'assets/images/furniture.png',
  //                                     height: 50,
  //                                     width: 50,
  //                                   ),
  //                                 ),
  //                                 Container(
  //                                   margin: EdgeInsets.only(left: 52, top: 15),
  //                                   width: 120,
  //                                   height: 45,
  //                                   child: Text(
  //                                     "Furniture",
  //                                     style: TextStyle(
  //                                       color: Color.fromARGB(255, 9, 5, 87),
  //                                       fontWeight: FontWeight.w600,
  //                                       fontSize: 22,
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ],
  //                             ))
  //                       ],
  //                     ),
  //                   ],
  //                 )
  //               ])
  //             ]))
  //       ]));
  // }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Color.fromARGB(255, 206, 233, 255),
  //     body: ListView.builder(
  //       padding: const EdgeInsets.all(10.0),
  //       itemCount: loadedCategory.length,
  //       itemBuilder: (ctx, i) => Container(),
  //     ),
  //   );
  // }
// }