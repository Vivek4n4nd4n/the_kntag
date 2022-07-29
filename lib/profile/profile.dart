import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/group/constructor.dart';
import 'package:the_kntag/profile/prof_save_view.dart';
import 'package:the_kntag/profile/prof_savedpage.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Groupdatas> savelist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    savelist = groups();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'Profile',
            style: TextStyle(color: black),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: white,
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 07, right: 05, left: 05),
                child: Container(
                  height: height * 0.35,
                  width: width * 0.99,
                  color: white,
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 05),
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                              left: 15,
                            ),
                            child: Center(
                              child: Container(
                                height: height * 0.30,
                                width: width * 0.85,
                                color: Colors.transparent,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6)),
                                          color: background,
                                        ),
                                        height: height * 0.27,
                                        width: width * 0.8,
                                      ),
                                    ),
                                    Positioned(
                                      top: -1,
                                      left: 15,
                                      child: buildstar(),
                                    ),
                                    Positioned(
                                      top: 1,
                                      left: 126,
                                      child: buildstar2(),
                                    ),
                                    Positioned(
                                      top: 1,
                                      right: 15,
                                      child: buildstar1(),
                                    ),
                                    Positioned(
                                        top: 70, right: 40, child: buildtext()),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ), // SingleChildScrollView(

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              width: width * 0.2,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                  border: Border.all(color: black),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                  child: Text(
                                '#Walking',
                                style: TextStyle(fontSize: 13),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              width: width * 0.2,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                  border: Border.all(color: black),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                  child: Text(
                                '#Movie',
                                style: TextStyle(fontSize: 13),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              width: width * 0.2,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                  border: Border.all(color: black),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                  child: Text(
                                '#Reading',
                                style: TextStyle(fontSize: 13),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              width: width * 0.2,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                  border: Border.all(color: black),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                  child: Text(
                                '#Forming', 
                                style: TextStyle(fontSize: 13),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ProfSaveView())));
                }),
                child: ListView.builder(
                    itemCount: 3,
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
                    }),
              ),
            )
          ],
        ));
  }

  Widget buildstar() {
    return Column(
      children: const [
        Icon(
          Icons.star_border,
          color: Colors.yellow,
        ),
        // Image.network(''),
        Text('5.5'),
        Text(
          'host rating',
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }

  Widget buildstar2() {
    return const CircleAvatar(
      backgroundImage: NetworkImage(
          'https://thumbs.dreamstime.com/b/smiling-african-american-boy-12753504.jpg'),
    );
  }

  Widget buildstar1() {
    return Column(
      children: const [
        Icon(
          Icons.star_border,
          color: Colors.green,
        ),
        // Image.network(''),
        Text('5.5'),
        Text(
          'host rating',
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }

  Widget buildtext() {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Bill Holderman',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: blue),
          ),
        ),
        const Text('Book Club is a 2018 American\n      romantic comedy film  ')
      ],
    );
  }
}
