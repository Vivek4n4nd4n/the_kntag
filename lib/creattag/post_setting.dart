// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
//import 'package:latlong2/latlong.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/creattag/creat_tagview.dart';

//import '../map/street_map.dart';

class PostSettingPage extends StatefulWidget {
  const PostSettingPage({Key? key}) : super(key: key);

  @override
  State<PostSettingPage> createState() => _PostSettingPageState();
}

class _PostSettingPageState extends State<PostSettingPage> {
  List<bool> isCardEnabled = [];
  List showTo = ['All', 'Male', 'female'];
  List joinSettings = ['Anyone can join', 'Request to join'];
  int _counter = 0;
  void incrementcounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementcounter() {
    setState(() {
      _counter--;
    });
    if (_counter == -1) {
      setState(() {
        _counter = 0;
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
          elevation: 0,
          backgroundColor: background,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            ),
            onPressed: (() {
              Navigator.pop(context);
            }),
          ),
          title: const Text(
            'Post Settings',
            style: TextStyle(color: black),
          ),
          centerTitle: true,
          actions: [
            PopupMenuButton(
              icon: const Icon(
                Icons.more_vert,
                color: black,
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: 0,
                    child: Text('menu'),
                  ),
                  PopupMenuItem(value: 1, child: Text('home')),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  print("My account menu is selected.");
                } else if (value == 1) {
                  print("Settings home is selected.");
                }
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: (Container(
                      height: 20.h,
                      width: 90.w,
                      child: Container(
                        child: Stack(
                          // rgb(242, 246, 253)
                          children: [
                            Positioned(
                                right: 45,
                                bottom: 10,
                                top: 1,
                                child: Image(
                                  image: AssetImage('assets/SETTING.png'),
                                  height: 70.h,
                                  width: 70.w,
                                  color: Color.fromARGB(95, 242, 246, 253),
                                )),
                            // child: Icon(Icons.SETTING.png,size: 200,color: Colors.blueGrey,)),
                            const Positioned(
                                bottom: 1,
                                right: 90,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage('assets/TICK.png'),
                                ))
                          ],
                        ),
                      ),
                    )),
                  ),
                ],
              ),
            
                 SizedBox(height: 3.h,),
                 Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding:  EdgeInsets.only(left: 5.w),
                       child: Text('Show to'),
                     ),
                        ButtonWidget(showTo, 10, 29),
                   ],
                 ),
              
             
           
                SizedBox(height:3.h),
            
                
                 Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding:  EdgeInsets.only(left: 5.w),
                       child: Text('join settings'),
                     ),
                     ButtonWidget(joinSettings, 10, 45),
                           Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('No of Spots'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: height * 0.1,
                      width: width * 0.6,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                decrementcounter();
                              },
                              icon: Icon(Icons.remove)),
                          Spacer(),
                          Center(child: Text('$_counter')),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                incrementcounter();
                              },
                              icon: Icon(Icons.add)),
                        ],
                      ),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonTheme(
                    minWidth: width * 0.9,
                    height: height * 0.1,
                    // ignore: deprecated_member_use
                    child: RaisedButton(color: blue,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => CreatTagview())));
                      },
                      child: Text(
                        "Post",
                        style: TextStyle(color: white),
                      ),
                    ),
                  ),
                )
              ],
            ),
               ] ),
        ),
      );
                
              
          
          
            
        
      
  }

  ButtonWidget(List title, int he, int wi) {
    return Container(
      height: 15.h,
      //  width: 100.w,
      child: Expanded(
        child: ListView.builder(
            padding: const EdgeInsets.all(15),
           

            itemCount: title.length,
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              isCardEnabled.add(false);

              return GestureDetector(
                  onTap: () {
                    isCardEnabled.replaceRange(0, isCardEnabled.length,
                        [for (int i = 0; i < isCardEnabled.length; i++) false]);
                    isCardEnabled[index] = true;
                    setState(() {});
                  },
                  child: SizedBox(
                    height: he.h,
                    width: wi.w,
                    child: Card(
                      color: white,
                      shape: RoundedRectangleBorder(
                          side: isCardEnabled[index]
                              ? BorderSide(color: blue)
                              : BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          title[index],
                          style: TextStyle(
                              color: isCardEnabled[index]
                                  ? Colors.black
                                  : Colors.grey,
                              fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ));
            }),
      ),
    );
  }
}






























//     return Scaffold(
//       backgroundColor: background,
//       appBar: AppBar(
//         backgroundColor: background,
//         elevation: 0,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(
//               Icons.arrow_back,
//               color: black,
//             )),
//         title: Text(
//           'Create Tag',
//           style: TextStyle(color: black),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(
//                 Icons.more_vert,
//                 color: black,
//               ))
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding:  EdgeInsets.all(3.h),
//           child: Column(
//             children: [
//              Padding(
//                 padding:  EdgeInsets.all(3.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                      Padding(
//                       padding:  EdgeInsets.all(4.0),
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding:  EdgeInsets.all(2.w),
//                           child: Container(
//                             height: 10.h,
//                             width: 26.w,
                            
//                             child:  TextField(
//                               keyboardType: TextInputType.name,
//                               decoration: InputDecoration(
//                                   hintText: 'All',hintStyle: TextStyle(fontSize: 14.sp), 
//                                   border: InputBorder.none),
//                             ),
//                           //  padding: EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               color: white,
//                               border: Border.all(width: 1, color: blue),
//                               borderRadius: const BorderRadius.all(
//                                 Radius.circular(6),
//                               ),
//                             ),
//                           ),
//                         ),
//                          Container(
//                           height: 10.h,
//                           width: 26.w,
                          
//                           child:  TextField(
//                             keyboardType: TextInputType.name,
//                             decoration: InputDecoration(
//                                 hintText: 'Male',hintStyle: TextStyle(fontSize: 12.sp), 
//                                 border: InputBorder.none),
//                           ),
//                          // padding: EdgeInsets.all(16),
//                           decoration: BoxDecoration(
//                             color: white,
//                             border: Border.all(width: 1, color: blue),
//                             borderRadius: const BorderRadius.all(
//                               Radius.circular(6),
//                             ),
//                           ),
//                         ),
//                          Padding(
//                            padding:  EdgeInsets.all(2.w),
//                            child: Container(
//                             height: 10.h,
//                             width: 26.w,
                            
//                             child:  TextField(
//                               keyboardType: TextInputType.name,
//                               decoration: InputDecoration(
//                                   hintText: 'Female',hintStyle: TextStyle(fontSize: 12.sp), 
//                                   border: InputBorder.none),
//                             ),
//                            // padding: EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               color: white,
//                               border: Border.all(width: 1, color: blue),
//                               borderRadius: const BorderRadius.all(
//                                 Radius.circular(6),
//                               ),
//                             ),
//                         ),
//                          ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(3.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Show to'),
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             height: height * 0.1,
//                             width: width * 0.4,
//                             child: TextField(
//                               keyboardType: TextInputType.name,
//                               decoration: InputDecoration(
//                                 hintText: 'Anyone can join',
//                                 hintStyle: TextStyle(fontSize: 13),
//                                 border: InputBorder.none,
//                               ),
//                             ),
//                             padding: EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               color: white,
//                               borderRadius: const BorderRadius.all(
//                                 Radius.circular(6),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             height: height * 0.1,
//                             width: width * 0.4,
//                             child: TextField(
//                               keyboardType: TextInputType.name,
//                               decoration: InputDecoration(
//                                   hintText: 'Request to join',
//                                   hintStyle: TextStyle(fontSize: 13),
//                                   border: InputBorder.none),
//                             ),
//                             padding: EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               color: white,
//                               borderRadius: const BorderRadius.all(
//                                 Radius.circular(6),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
        
//     );
//   }
// }
