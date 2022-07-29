import 'package:flutter/material.dart';

//import 'package:the_kntag/views/home/event_achivedpage.dart';
import 'package:the_kntag/views/home/event_exp.dart';

import '../../colors.dart';

class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({Key? key}) : super(key: key);

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EventExpiredPage()));
                //Navigator.push(context,MaterialPageRoute(builder:(context)=>
                //EventExpiredPage()));
              },
              icon: Icon(
                Icons.more_vert,
                color: black,
              ))
        ],
        title: Text(
          'Tag',
          style: TextStyle(color: black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        color: black,
                        height: height * 0.05,
                        width: width * 0.7,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVvCx_QVJK3YSAb0eVoh87DSf9-mRqt3CPfg&usqp=CAU',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(
                5,
              ),
              child: Container(
                height: height * 0.15,
                child: Row(
                  children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '#BookClub',
                            style: TextStyle(
                                fontSize: 20,
                                color: blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Location:Race Course\n13th feb 2022: 07pm to 10pm',
                        style: TextStyle(color: black, fontSize: 14),
                      ),
                    ]),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '14 mins away',
                              style: TextStyle(fontSize: 12, color: black),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: height * 0.13,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'hosted by:',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black,
                                ),
                              ),
                              Text(
                                'Bill Holderman',
                                style: TextStyle(fontSize: 15, color: black),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://thumbs.dreamstime.com/b/smiling-african-american-boy-12753504.jpg',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Book Club is a 2018 American romantic comedy film\ndirected by Bill Holderman.',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: height * 0.08,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(08)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Stack(
                          children: [
                            Container(
                              height: height * 0.06,
                              width: width * 0.3,
                              color: white,
                              child: Stack(
                                children: [
                                  Positioned(
                                      left: 65,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1520409364224-63400afe26e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWVucyUyMGhhaXJ8ZW58MHx8MHx8&w=1000&q=80'),
                                      )),
                                  Positioned(
                                      left: 40,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                                      )),
                                  Positioned(
                                      left: 10,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg'),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text('          13 Joined\n12/25 Spot Left'),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EventExpiredPage()));
                              },
                              icon: Icon(Icons.arrow_forward))),
                    ],
                  )),
            ),
            SizedBox(
              width: width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => EventExpiredPage())));
                },
                // ignore: sort_child_properties_last
                child: const Text('Send joind request'),
                style: ElevatedButton.styleFrom(primary: blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
