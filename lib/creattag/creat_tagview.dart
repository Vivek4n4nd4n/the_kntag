import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';

import '../map/street_map.dart';

class CreatTagview extends StatefulWidget {
  const CreatTagview({Key? key}) : super(key: key);

  @override
  State<CreatTagview> createState() => _CreatTagviewState();
}

class _CreatTagviewState extends State<CreatTagview> {
  DateTime startDate = DateTime.now();

  Future<void> _startDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != startDate) {
      setState(() {
        startDate = picked;
      });
    }
  }

  DateTime endDate = DateTime.now();

  Future<void> _endDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: endDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != endDate) {
      setState(() {
        endDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: black,
            )),
        title: Text(
          'Create Tag',
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
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 08, bottom: 08, right: 12, left: 12),
            child: Container(
              width: width * 0.9,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: white,
                    hintText: 'TagName',
                    border: InputBorder.none),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 08, bottom: 08, right: 12, left: 12),
            child: Container(
              width: width * 0.9,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: white,
                    helperMaxLines: 6,
                    hintText: 'Tag Description',
                    border: InputBorder.none),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 08, bottom: 20, right: 12, left: 12),
            child: Container(
              width: width * 0.9,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: white,
                    hintText: 'Place',
                    border: InputBorder.none),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Start'),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6)),
                          width: width * 0.2,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Date',
                              filled: true,
                              fillColor: white,
                            ),
                            onTap: () {
                              _startDate(context);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(04),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6)),

                          width: width * 0.2,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Time',
                              filled: true,
                              fillColor: white,
                            ),
                            onTap: () {},
                          ),

                          //  onPressed: () {}
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text('End'),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          5,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6)),
                          width: width * 0.2,
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Date',
                              filled: true,
                              fillColor: white,
                            ),
                            onTap: () {
                              _endDate(context);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(05),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6)),
                          width: width * 0.2,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Time',
                              filled: true,
                              fillColor: white,
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: height * 0.13,
                  width: width * 0.27,
                  color: white,
                  child: Center(
                      child: Text(
                    "+Image",
                    style: TextStyle(color: black),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.13,
                  width: width * 0.27,
                  color: white,
                  child: Center(
                      child: Text(
                    "+Image",
                    style: TextStyle(color: black),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: height * 0.13,
                  width: width * 0.27,
                  color: white,
                  child: Center(
                      child: Text(
                    "+Image",
                    style: TextStyle(color: black),
                  )),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonTheme(
              minWidth: width * 0.9,
              height: height * 0.1,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) =>const StreetMap())));
                },
                child: Text(
                  "next",
                  style: TextStyle(color: white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
