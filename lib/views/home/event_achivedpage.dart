import 'package:flutter/material.dart';
import 'package:the_kntag/views/home/event_exp.dart';

import '../../colors.dart';

class EventAchievdPage extends StatefulWidget {
  const EventAchievdPage({Key? key}) : super(key: key);

  @override
  State<EventAchievdPage> createState() => _EventAchievdPageState();
}

class _EventAchievdPageState extends State<EventAchievdPage> {
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
      body: SingleChildScrollView(
        child: (Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: height*0.3,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        color: black,
                      //  height: 200,
                        width: width * 0.7,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVvCx_QVJK3YSAb0eVoh87DSf9-mRqt3CPfg&usqp=CAU',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            ),

          SizedBox(height: height*0.3,width: width*0.9,
            child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,crossAxisSpacing: 2,mainAxisSpacing: 2,
            ),
            children: [
              Image.network('https://media.istockphoto.com/photos/diverse-group-of-friends-discussing-a-book-in-library-picture-id583816330?k=20&m=583816330&s=612x612&w=0&h=AGpy-8Be51ZwS0mCL4y71Su2-lSvaDV92al0GLAmL3c='),
              Image.network('https://media.gettyimages.com/photos/group-of-young-people-gather-for-a-bible-study-picture-id178720179?b=1&k=20&m=178720179&s=170667a&w=0&h=aMv9jvO6rcO39HjuCBrwMGMsF9l0-1y33pfw1qP7u-8='),
             // Image.network('https://prh.imgix.net/articles/BookClub_1600x800.jpg'),
              Image.network('https://i2.wp.com/thenerddaily.com/wp-content/uploads/2020/07/10-Virtual-Book-Clubs.jpg?fit=770%2C571&ssl=1'),

              Image.network('https://thumbs.dreamstime.com/z/primary-school-children-classroom-reading-books-60176989.jpg'),
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhAtkFwZBSZoe053yXVCD3uXaZqHwtoZXeRw&usqp=CAU'),
            ],
          ),
          ),
            
            // Padding(
            //   padding: const EdgeInsets.all(4.0),
            //   child: Container(color: white,
            //     height: height*0.2,width:width* 0.9,
            //     // child:
                  
                  
                //     Row(
                      
                //       children: [
                //         Container(height: 50,width: 100,
                //           color: white,),
                //         Container(height: 50,width: 100,
                //           color: black,),
                //         Container(height: 50,width: 100,
                //           color: blue,),
                //       ],
                //     ),
                //     // Row(children: [
                    //    Container(height: 60,width: 100,
                    //     color: red,),
                    //     Container(height: 60,width: 100,
                    //       color: white,),
                    //     Container(height: 60,width: 100,
                    //       color: black,),

                    // ],)
                  
                
          //    ),
           // ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: SizedBox(
                width: width * 0.9,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("UpLoad Photo's"),
                  style: ElevatedButton.styleFrom(primary: blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                color: background,
                height: height * 0.05,
                width: width * 0.9,
                child: Text(
                  'Book Club is a 2018 American romantic comedy \nfilm directed by Bill Holderman.',
                  style: TextStyle(fontSize: 12, color: black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
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
                                children: const [
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
                                // Navigator.push(
                                //  context,
                                // MaterialPageRoute(
                                //     builder: (context) =>
                                //         EventExpiredPage()));
                              },
                              icon: Icon(Icons.arrow_forward))),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(
                5,
              ),
              child: Container(
                height: height * 0.13,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'Location:Race Course',
                      style: TextStyle(color: black, fontSize: 14),
                    ),
                    Row(
                      children: [
                        Text(
                          '13th feb 2022: 07pm to 10pm',
                          style: TextStyle(color: black, fontSize: 14),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '14 mins away',
                          style: TextStyle(fontSize: 12, color: black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: height * 0.1,
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
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
