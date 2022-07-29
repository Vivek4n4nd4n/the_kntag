import 'package:flutter/material.dart';


class HomeTagview extends StatefulWidget {
  String title;
  String joined;
  String spot;
  String prof1;
  List pic;
  String date;
  String time;
  String location;
  String profimg;

  HomeTagview(
      {required this.title,
      required this.joined,
      required this.spot,
      required this.profimg,
      required this.date,
      required this.time,
      required this.location,
      required this.pic,
      required this.prof1,
      Key? key})
      : super(key: key);

  @override
  State<HomeTagview> createState() => _HomeTagviewState();
}

class _HomeTagviewState extends State<HomeTagview> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color: Colors.white,
            height: height*0.19,
            width: width*0.95,
            child: Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 9, 76, 203)),
                      ),
                      
                      Text('  ${widget.location}\n  ${widget.date}:${widget.time}',style: TextStyle(fontSize: 11),),
                      SizedBox(height: height*0.05,),
                      Row(
                        children: [buildStackedImage(), Text('${widget.joined}.${widget.spot}',style: TextStyle(fontSize: 9),)],
                      )
                    ],
                  ),
                  SizedBox(width: width*0.05,),
                  Container(height: height*0.18,
                  width:width*0.3 ,
                    child: Column(children: [//SizedBox(height: height*0.001,),
            CircleAvatar(backgroundImage: NetworkImage(widget.profimg,),),
                      Image.network(widget.prof1,height: height*0.12,),
           // SizedBox(height: height*0.005,)
                    ],),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(),
        ))
      ],
    );
  }

  Widget buildStackedImage() {
    final double size = 28;
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
