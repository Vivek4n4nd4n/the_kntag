import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/group/constructor.dart';

import 'package:the_kntag/map/g_map.dart';
import 'package:the_kntag/views/home/event_datailspage.dart';
import 'package:the_kntag/views/home/hometag.dart';
import 'package:the_kntag/views/loginview.dart/loginview.dart';

import '../loginview.dart/shared_pref.dart';

class Homeview extends StatefulWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  String? mail = UserSimplePreferences.getUserName();
  String? pwd = UserSimplePreferences.getPassword();
  List<Groupdatas> grouptag = groups();
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(
                context);
          },
          icon: Icon(
            Icons.menu,
            color: black,
          ),
        ),
        title: Text(
          'Kntag',
          style: TextStyle(
            color: blue,
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => EventDetailsPage()
                          //ProfilePage()
                          )));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://thumbs.dreamstime.com/b/smiling-african-american-boy-12753504.jpg',
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Gmap(onPicked: (pickedData) {
              // print(pickedData.latLong.latitude);
              //print(pickedData.latLong.longitude);
              //print(pickedData.address);
            }),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.35,
            maxChildSize: 0.90,
            minChildSize: 0.33,
            builder: (context, scrollController) => Container(
                color: Colors.transparent,
                child: Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: scrollController,
                      itemCount: grouptag.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        EventDetailsPage())));
                          },
                          child: HomeTagview(
                            title: grouptag[index].title,
                            joined: grouptag[index].joined,
                            pic: grouptag[index].pic,
                            spot: grouptag[index].spot,
                            prof1: grouptag[index].prof,
                            date: grouptag[index].date,
                            time: grouptag[index].time,
                            location: grouptag[index].location,
                            profimg: grouptag[index].profimg,
                          ),
                        );
                      })),
                )),
          ),
        ],
      ),
    );
  }
}
