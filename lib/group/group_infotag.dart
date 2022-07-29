import 'package:flutter/material.dart';
import 'package:the_kntag/group/constructor.dart';
import 'package:the_kntag/group/group_people/group_people.dart';
import 'package:the_kntag/group/group_people/grouppeople_constructor.dart';

import 'package:the_kntag/group/grouptag/grouptag.dart';

class GroupInfo extends StatefulWidget {
  GroupInfo({Key? key}) : super(key: key);

  @override
  State<GroupInfo> createState() => _GroupInfoState();
}

class _GroupInfoState extends State<GroupInfo> {
  List<Groupdatas> grouptag = [];
  List<GrpPeopledata> grouppeoples = [];
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    grouptag = groups();
    grouppeoples = grupeople();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 206, 221, 234),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
          title: const Center(
            child: Text(
              'Book Club',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          leading: IconButton(
              onPressed: () {Navigator.pop(context);
                },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                text: 'Tags',
              ),
              Tab(
                text: 'people',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: grouptag.length,
                itemBuilder: (context, index) {
                  return Tagview(
                    title: grouptag[index].title,
                    joined: grouptag[index].joined,
                    pic: grouptag[index].pic,
                    spot: grouptag[index].spot,
                    prof1: grouptag[index].prof,
                    date: grouptag[index].date,
                    time: grouptag[index].time,
                    location: grouptag[index].location,
                    profimg: grouptag[index].profimg,
                  );
                }),
            ListView.builder(
                itemCount: grouppeoples.length,
                itemBuilder: (context, index) {
                  return Peopleview(
                    name: grouppeoples[index].name,
                    profpic: grouppeoples[index].profpic,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
