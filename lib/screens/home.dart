import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

class Myhome extends StatefulWidget {
  Myhome({Key key}) : super(key: key);

  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  List img = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 5),
          child: Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          Transform.rotate(
            angle: -25 * (3.14 / 180),
            child: VxBox(
              child: Icon(
                Icons.send_outlined,
                color: Colors.black,
              ),
            ).margin(EdgeInsets.only(right: 5)).make(),
          ),
        ],
        title: "instagram".text.bold.black.size(25).makeCentered(),
        backgroundColor: Colors.white,
      ),
      body: VStack(
        [
          //story
          Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[400])),
              child: ListView.builder(
                itemCount: img.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(img[index]),
                                    fit: BoxFit.fill),
                                border: Border.all(
                                    color: Colors.redAccent,
                                    width: 2),
                                shape: BoxShape.circle),
                          ),
                          index == 0
                              ? Positioned(
                                  bottom: 5,
                                  left: 50,
                                  child: CircleAvatar(
                                    radius: 8,
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.blue,
                                        size: 15,
                                      ),
                                    ),
                                  ))
                              : SizedBox()
                        ],
                      ),
                      Center(
                        child: Text("name"),
                      )
                    ],
                  );
                },
              )),
          //post
          Expanded(
            child: ListView.builder(
              itemCount: img.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: VStack(
                    [
                      Container(
                          margin: EdgeInsets.all(5),
                          child: HStack(
                            [
                              Container(
                                  child: CircleAvatar(
                                radius: 15,
                              )),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 260),
                                  child: Text("user_name")),
                              Container(child: Icon(Icons.more_vert))
                            ],
                          )),
                      Image(image: AssetImage(img[index])),
                      HStack(
                        [
                          Container(
                              child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30)),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(Icons.maps_ugc_outlined,
                                  size: 30)),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 250, bottom: 30),
                            child: Transform.rotate(
                              angle: -25 * (3.14 / 180),
                              child: Icon(
                                Icons.send_outlined,
                                size: 30,
                              )
                                  .box
                                  .margin(EdgeInsets.only(right: 5))
                                  .make(),
                            ),
                          ),
                          Icon(
                            Icons.bookmark_border_sharp,
                            size: 35,
                          )
                        ],
                      ).h(35),
                      "343 likes".text.bold.make().p4(),
                      HStack(
                        [
                          5.widthBox,
                          CircleAvatar(
                            radius: 7,
                          ),
                          5.widthBox,
                          "liked by username and 6 others"
                              .text
                              .bold
                              .size(12)
                              .make(),
                        ],
                      ),
                      50.heightBox
                    ],
                  ),
                );
              },
            ),
          ),
          bottomBar.box.height(40).make()
        ],
      ),
    );
  }
}

var bottomBar = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Icon(
      Icons.home_outlined,
      size: 35,
    ),
    Icon(Icons.search, size: 35),
    Icon(Icons.add_box_outlined, size: 35),
    Icon(Icons.favorite_border, size: 35),
    CircleAvatar(
      radius: 13,
    )
  ],
);
