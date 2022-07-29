

import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/group/constructor.dart';

// ignore: must_be_immutable
class Savedpage extends StatefulWidget {
  String title;
  String location;
  String date;
  String time;
  String profimg;
  List piclist;
  //String profileimg;
  String bokimg;
  String spot;
  String joined;

  Savedpage({
    required this.location,
    required this.title,
    required this.time,
    required this.date,
    required this.profimg,
    required this.piclist,
   // required this.profileimg,
    required this.bokimg,
    required this.joined,
    required this.spot,
    Key? key,
  }) : super(key: key);

  @override
  State<Savedpage> createState() => _SavedpageState();
}

class _SavedpageState extends State<Savedpage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
              height: height * 0.2,
              width: width * 0.9,
              color: white,
              child: Row(
                children: [
                  Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 10),
                            child: Text(
                              widget.title,
                              style: TextStyle(
                                  color: blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Row(children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              '  $location \n  $date $time',
                              style: TextStyle(fontSize: 12),
                            ))
                      ]),
                      SizedBox(height: height*0.01,),
                      Row(
                        children: [
                          buildStackedImage(),
                          Text(
                            '${widget.joined}.${widget.spot}',
                            style: TextStyle(fontSize: 10),
                          ),
                         
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(backgroundImage:NetworkImage(profimg)),
                        Image.network(widget.bokimg,height: height*0.12,width: width*0.3,),
                      
                     
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget buildStackedImage() {
    final double size = 28;
    final urlImages = widget.piclist;
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
