import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/notification/notif_construct.dart';
import 'package:the_kntag/notification/notifmodel.dart';
//import 'package:the_kntag/massege/msgtabs.dart';

class Notifview extends StatefulWidget {
  const Notifview({Key? key}) : super(key: key);

  @override
  State<Notifview> createState() => _NotifviewState();
}

class _NotifviewState extends State<Notifview> {
  List<NotifData> notlist = [];
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    notlist = notif();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation:0.5 ,
          backgroundColor: white,
          title: Center(child: Text('Notification',style: TextStyle(color: black),)),
        ),
        body: 
        
        ListView.builder(
          itemCount: notlist.length,
          itemBuilder: (context, index) {
          return 
          
           Notifmodel(
              img: notlist[index].img,
              name: notlist[index].name,
              description: notlist[index].description,
              incontact:notlist[index].incontact,
              mycontact: notlist[index].mycontact);
        }));
  }
}
