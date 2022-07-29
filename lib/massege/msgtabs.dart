import 'package:flutter/material.dart';
import 'package:the_kntag/massege/Chat/msg_widow_chat.dart';
//import 'package:the_kntag/massege/Chat/msg_widow_chat.dart';

// ignore: must_be_immutable
class MsgTabs extends StatefulWidget {
  String title;
  String joind;
  String spot;
  List prof;

  MsgTabs(
      {required this.title,
      required this.joind,
      required this.spot,
      required this.prof,
      Key? key})
      : super(key: key);

  @override
  State<MsgTabs> createState() => _MsgTabsState();
}

class _MsgTabsState extends State<MsgTabs> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(7.0),
    
        
        child: GestureDetector(
          onTap: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>Chatwindow(prof: widget.prof,
                  title: widget.title,joined: widget.joind,) ));},
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              height: height * 0.15,
              width: width * 0.9,
              child: Row(children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.start,
                      widget.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(255, 9, 76, 203)),
                    ),
                  ),
                  Text(widget.joind),
                  Text(widget.spot),
                ]),
                SizedBox(
                  width: width * 0.25,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children:const [
                          Icon(Icons.location_pin),
                          Icon(Icons.chat),
                        ],
                      ),
                    ),
                    buildStackedImage(),
                  ],
                ),
              ])),
        ),
      
    );
  }

  Widget buildStackedImage() {
   final double size = 38;
    final urlImages = widget.prof;
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
