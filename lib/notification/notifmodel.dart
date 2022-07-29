import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';

// ignore: must_be_immutable
class Notifmodel extends StatefulWidget {
  String img;
  String name;
  String description;
  String mycontact;
  bool incontact;
  Notifmodel(
      {required this.img,
      required this.name,
      required this.description,
      required this.mycontact,
      required this.incontact,
      Key? key})
      : super(key: key);

  @override
  State<Notifmodel> createState() => _NotifmodelState();
}

class _NotifmodelState extends State<Notifmodel> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return widget.incontact == false
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 0.1,
              width: width * 0.85,
              color: white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        child: ClipOval(child: Image.network(widget.img))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          widget.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.mycontact,
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: white,
                height: height * 0.14,
                width: width * 0.85,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image.network(
                            widget.img,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 04),
                          child: Text(
                            widget.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              widget.description,
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: width * 0.06,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('Approved')),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(Icons.close),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )));
    
  }
}
