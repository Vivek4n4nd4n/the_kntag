import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/creattag/post_editing.dart';
import 'package:the_kntag/creattag/post_setting.dart';

class Testpage extends StatefulWidget {
  const Testpage({Key? key}) : super(key: key);

  @override
  State<Testpage> createState() => _TestpageState();
}

class _TestpageState extends State<Testpage> {
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
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: background,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: background,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  size: 5.w,
                  Icons.arrow_back,
                  color: black,
                )),
            title: Text(
              'Create Tag Testpage',
              style: TextStyle(
                fontSize: 5.w,
                color: black,
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PostEditingPage(),
                          ));
                    },
                    icon: Icon(
                      size: 5.w,
                      Icons.more_vert,
                      color: black,
                    )),
              )
            ]),
        body:ListView(
           children:[ Padding(
                padding: EdgeInsets.only(
                    bottom: 1.w, top: 2.w, left: 5.w, right: 5.w),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: white,
                      hintText: 'Reading Books',
                      hintStyle: TextStyle(fontSize: 14.sp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none)),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                    top: 1.w, bottom: 1.w, left: 5.w, right: 5.w),
                child: TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: white,
                      helperMaxLines: 6,
                      hintText: 'Tag Description',
                      hintStyle: TextStyle(fontSize: 14.sp),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 1.w, bottom: 1.w, right: 5.w, left: 5.w),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: white,
                      hintText: 'Place',
                      hintStyle: TextStyle(fontSize: 14.sp),
                      // focusColor: blue,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none)),
                ),
              ),

  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 4.w, bottom: 2.w, left: 3.w),
                          child: Text(
                            'Start',
                            style: TextStyle(fontSize: 11.sp),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 1.w, bottom: 1.w, left: 4.w, right: 1.w),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(6)),
                                  width: 21.w,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Date',
                                      hintStyle: TextStyle(fontSize: 11.sp),
                                      filled: true,
                                      fillColor: white,
                                    ),
                                    onTap: () {
                                      _startDate(context);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: 1.w, top: 1.w, right: 1.w, left: 1.w),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(6)),

                                  width: 21.w,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Time',
                                      hintStyle: TextStyle(fontSize: 11.sp),
                                      filled: true,
                                      fillColor: white,
                                    ),
                                    onTap: () {},
                                  ),

                                  //  onPressed: () {}
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 4.w, bottom: 2.w, left: 2),
                          child: Text(
                            'End',
                            style: TextStyle(fontSize: 11.sp),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 1.w, bottom: 1.w, right: 1.w, left: 1.w),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  width: 21.w,
                                  child: TextField(
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Date',
                                      hintStyle: TextStyle(fontSize: 11.sp),
                                      filled: true,
                                      fillColor: white,
                                    ),
                                    onTap: () {
                                      _endDate(context);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 1.w, bottom: 1.w, left: 1.w, right: 2.w),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: blue,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  width: 21.w,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Time',
                                      hintStyle: TextStyle(fontSize: 11.sp),
                                      filled: true,
                                      fillColor: white,
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
            



       ] ),
            
Padding(
  padding: const EdgeInsets.all(5.0),
  child:   Container(
  
    height: 25.w,
   // width: 30.w,
      child: Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(2.w),
                    child: ListView.builder(
                       // shrinkWrap: false,

                        // physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 3.5.w, right: 0.8.w),
                            child: Container(
                              height: 5.w,
                              width: 27.w,
                              padding: EdgeInsets.only(
                                  top: 1, bottom: 1, right: 2, left: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: white),
                              child: Center(
                                  child: Text(
                                '#Image',
                                style: TextStyle(fontSize: 11.sp),
                              )),
                            ),
                          );
                        })),
                  ),
                ),
  
  ),
),
            Padding(
                padding: EdgeInsets.all(3.w),
                child: ButtonTheme(
                  minWidth: 90.w,
                  height: 14.w,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => PostSettingPage())));
                    },
                    child: const Text(
                      "next",
                      style: TextStyle(color: white),
                    ),
                  ),
                ),
              ),
            
        
        
             ]) );
  }
}
