import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';

class Tagview extends StatefulWidget {
  String title;
  String joined;
  String spot;
  String prof1;
  List pic;
  String date;
  String time;
  String location;
  String profimg;

  Tagview(
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
  State<Tagview> createState() => _TagviewState();
}

class _TagviewState extends State<Tagview> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(color: Colors.white,
        height: height*0.2,
        width: width*0.9,
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 9, 76, 203)),
                ),
                
                Text('  ${widget.location}\n  ${widget.date}:${widget.time}',style: TextStyle(fontSize: 13),),
                SizedBox(height: height*0.05,),
                Row(
                  children: [buildStackedImage(), Text('${widget.joined}.${widget.spot}',style: TextStyle(fontSize: 10),)],
                )
              ],
            ),
            SizedBox(width: width*0.01,),
            Container(height: height*0.18,
            width:width*0.3 ,
              child: Stack(children: [
               
                Positioned(
                  top: 10,
                  left: 15,
                  child: Image.network(widget.prof1,height: height*0.2,width: width*0.2,)),
Positioned(left: 30,top: 15,
  child: CircleAvatar(backgroundImage: NetworkImage(widget.profimg,),))
              ],),
            )
          ],
        ),
      ),
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
