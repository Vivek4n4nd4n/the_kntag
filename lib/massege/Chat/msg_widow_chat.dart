import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/massege/Chat/chat_one.dart';
import 'package:the_kntag/massege/msg_construct.dart';
import 'package:the_kntag/views/home/event_achivedpage.dart';

class Chatwindow extends StatefulWidget {
  List prof;
  String title;
  String joined;
  Chatwindow(
      {required this.joined, required this.prof, required this.title, Key? key})
      : super(key: key);

  @override
  State<Chatwindow> createState() => _ChatwindowState();
}

class _ChatwindowState extends State<Chatwindow> {
  List<MsgConst> piclist = [];
  List<Message>  messageslist=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    piclist = massegedatas();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            )),
        title: Text(
          widget.title,
          style: TextStyle(color: black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EventAchievdPage()));
              },
              icon: Icon(
                Icons.more_vert,
                color: black,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: white,
              height: height * 0.1,
              width: width * 1,
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.3,
                        //color: red,
                        child: buildStackedImage(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        '13 joined\n 12/25 Spot Left',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 02),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: height * 0.07,
                            width: width * 0.35,
                            decoration: BoxDecoration(
                                color: blue,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    '${widget.joined}    >',
                                    style: TextStyle(color: white),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            child: Chatclass(),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 0.09,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: height * 0.08, width: width * 0.7,
                    //color: white,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TextField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'enter your text'),
                        onSubmitted: (text) {
                          final message = Message(
                              text: text,
                              date: DateTime.now(),
                              isSentByMe: true);
                          setState() {
                            messageslist.add(message);
                          }

                          ;
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                    ),
                  ),
                )
              ]),
            ),
          ),
        ],
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
