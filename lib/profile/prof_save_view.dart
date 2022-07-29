import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/group/constructor.dart';
//import 'package:the_kntag/massege/msg_construct.dart';
import 'package:the_kntag/profile/prof_savedpage.dart';

class ProfSaveView extends StatefulWidget {
  const ProfSaveView({Key? key}) : super(key: key);

  @override
  State<ProfSaveView> createState() => _ProfSaveViewState();
}

class _ProfSaveViewState extends State<ProfSaveView> {
  List<Groupdatas> savelist = [];
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    savelist = groups();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: (() {
                  Navigator.of(context).pop();
                }),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: black,
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
                color: black,
              ),
            )
          ],
          title: Text(
            'Save',
            style: TextStyle(color: black),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: savelist.length,
            itemBuilder: (context, index) {
              return Savedpage(
                title: savelist[index].title,
                location: savelist[index].location,
                date: savelist[index].date,
                time: savelist[index].time,
                piclist: savelist[index].pic,
                bokimg: savelist[index].prof,
                spot: savelist[index].spot,
                joined: savelist[index].joined,
                profimg: savelist[index].profimg,
              );
            }));
  }
}
