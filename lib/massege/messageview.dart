import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/massege/msg_construct.dart';
import 'package:the_kntag/notification/notif_construct.dart';

import '../views/home/homeview.dart';
import 'msgtabs.dart';

class Massage extends StatefulWidget {
  const Massage({Key? key}) : super(key: key);

  @override
  State<Massage> createState() => _MassageState();
}

class _MassageState extends State<Massage> {
  List<MsgConst> msgdetails = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    msgdetails = massegedatas();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: background,
          appBar: AppBar(
            backgroundColor: white,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homeview(),
                      ));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: black,
                )),
            title: Text(
              'Massage',
              style: TextStyle(color: black),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: black,
                  ))
            ],
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(
                  text: 'Active',
                ),
                Tab(
                  text: 'upcoming',
                ),
                Tab(
                  text: 'old',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: msgdetails.length,
                  itemBuilder: (context, index) {
                    return MsgTabs(
                        title: msgdetails[index].title,
                        joind: msgdetails[index].joind,
                        spot: msgdetails[index].spot,
                        prof: msgdetails[index].prof,
                      );
                  }),


                    ListView.builder(
                  itemCount: msgdetails.length,
                  itemBuilder: (context, index) {
                    return MsgTabs(
                        title: msgdetails[index].title,
                        joind: msgdetails[index].joind,
                        spot: msgdetails[index].spot,
                        prof: msgdetails[index].prof,
                      );
                  }),


                    ListView.builder(
                  itemCount: msgdetails.length,
                  itemBuilder: (context, index) {
                    return MsgTabs(
                        title: msgdetails[index].title,
                        joind: msgdetails[index].joind,
                        spot: msgdetails[index].spot,
                        prof: msgdetails[index].prof,
                      );
                  }),
            ],
          )),
    );
  }
}
