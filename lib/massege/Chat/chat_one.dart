import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
//import 'package:the_kntag/colors.dart';
//import 'package:the_kntag/massege/msg_construct.dart';
import 'package:date_time_format/date_time_format.dart';
import 'package:the_kntag/colors.dart';

class Chatclass extends StatefulWidget {
  const Chatclass({Key? key}) : super(key: key);

  @override
  State<Chatclass> createState() => _ChatclassState();
}

class _ChatclassState extends State<Chatclass> {
  List<Message> messageslist = [
    Message(
        text: 'Hai What i told you to purchase',
        date: DateTime.now().subtract(Duration(days:3,minutes: 1)),
        isSentByMe: true
        // true,
        ),
    Message(
      text: 'banana',
      date: DateTime.now().subtract(Duration(days: 3 ,minutes: 2)),
      isSentByMe: false,
    ),
    Message(
      text: 'How much i told to purchase',
      date: DateTime.now().subtract(Duration(days:3,minutes: 3)),
      isSentByMe: true,
    ),
    Message(
      text: 'Two',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 4)),
      isSentByMe: false,
    ),
    Message(
      text: 'How much in your hand',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 5)),
      isSentByMe: true,
    ),
    Message(
      text: 'one',
      date: DateTime.now().subtract(Duration(days:3,minutes: 6)),
      isSentByMe: false,
    ),
    Message(
      text: 'Where is another one',
      date: DateTime.now().subtract(Duration( days: 3,minutes: 7)),
      isSentByMe: true,
    ),
    Message(
      text: 'that is it',
      date: DateTime.now().subtract(Duration(days:3,minutes: 8)),
      isSentByMe: false,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GroupedListView<Message, DateTime>(
      padding: EdgeInsets.all(8),
      reverse: false,
      order: GroupedListOrder.DESC,
      useStickyGroupSeparators: true,
      floatingHeader: true,
      elements: messageslist,
      groupBy: (msg) =>
          DateTime(msg.date.year, msg.date.month, msg.date.day),
      groupHeaderBuilder: (Message msg) => SizedBox(
          height: 40,
          child: Center(
            child: Card(
              color: Color.fromARGB(255, 126, 202, 240),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  DateFormat.yMMMd().format(msg.date),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )),
      itemBuilder: (context, Message msg) => Align(
        alignment:
            msg.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: msg.isSentByMe?BorderRadius.only(
              topLeft:Radius.circular(20),bottomLeft: Radius.circular(20)
              ,bottomRight: Radius.circular(20) )
              :BorderRadius.only(
              topRight:Radius.circular(20),bottomLeft: Radius.circular(20)
              ,bottomRight: Radius.circular(20) ),),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(msg.text),
          ),
        ),

        //       )
      ),
    ));
  }
}

class Message {
  String text;
  DateTime date;
  bool isSentByMe;
  Message({required this.date, required this.isSentByMe, required this.text});

  static void add(Message message) {}
}
