import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class Peopleview extends StatefulWidget {
  String name;
  String profpic;

  Peopleview({required this.name, required this.profpic, Key? key})
      : super(key: key);

  @override
  State<Peopleview> createState() => _PeopleviewState();
}

class _PeopleviewState extends State<Peopleview> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
                backgroundImage: NetworkImage(
              widget.profpic,
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.name),
            ),
          ],
            ),
          ),
        ],
      ),
    );
  }
}
