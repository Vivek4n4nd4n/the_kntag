import 'package:flutter/material.dart';

import 'group_infotag.dart';
//import 'package:the_kntag/group/group_infotag.dart';
//import 'Groups.dart';

class Groups extends StatefulWidget {
  String title;
  String joined;
  String spot;
  List pic;
  Groups(
      {required this.title,
      required this.joined,
      required this.pic,
      required this.spot,
      Key? key})
      : super(key: key);

  @override
  State<Groups> createState() =>_GrouptagState ();
}

class _GrouptagState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GroupInfo()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  height: height * 0.15,
                  width: width * 0.95,
                  child: Row(children: [
                    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.start,
                          widget.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromARGB(255, 9, 76, 203)),
                        ),
                      ),
                      Text(widget.joined),
                      Text(widget.spot),
                    ]),
                    SizedBox(
                      width: width * 0.25,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.08,
                        ),
                        buildStackedImage(),
                      ],
                    ),
                  ])),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStackedImage() {
    final double size = 38;
    final urlImages = widget.pic;
    final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();
    return StackedWidgets(
      items: items,
      size: size,
    );
  }

  Widget buildImage(String urlImage) {
    final double bordersize = 2;
    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(bordersize),
        color: Colors.white,
        child: ClipOval(
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class StackedWidgets extends StatelessWidget {
  final List<Widget> items;
  final TextDirection direction;
  final double size;
  final double xShift;
  const StackedWidgets({
    Key? key,
    required this.items,
    this.direction = TextDirection.ltr,
    this.size = 100,
    this.xShift = 10,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final allItemes = items
        .asMap()
        .map((index, item) {
          final left = size - xShift;
          final value = Container(
            width: size,
            height: size,
            child: item,
            margin: EdgeInsets.only(left: left * index),
          );
          return MapEntry(index, value);
        })
        .values
        .toList();
    return Container(
      child: Stack(
        children: direction == TextDirection.ltr
            ? allItemes.reversed.toList()
            : allItemes,
      ),
    );
  }
}
