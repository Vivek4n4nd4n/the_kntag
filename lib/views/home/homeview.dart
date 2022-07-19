import 'package:flutter/material.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/map/g_map.dart';
import 'package:the_kntag/views/home/event_datailspage.dart';



import '../loginview.dart/shared_pref.dart';

class Homeview extends StatefulWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  String? mail = UserSimplePreferences.getUserName();
  String? pwd = UserSimplePreferences.getPassword();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(backgroundColor: background,elevation: 0,
      leading: IconButton(onPressed: (){},icon: Icon(Icons.menu,color: black,),),
      title: Text('Kntag',style: TextStyle(color: blue,),
      ),centerTitle: true,
      actions: [GestureDetector(onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: ((context) =>EventDetailsPage()
         //ProfilePage()
          )));
      },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundImage:
           NetworkImage('https://thumbs.dreamstime.com/b/smiling-african-american-boy-12753504.jpg',
          ),),
        ),
      )],),
      body: Center(
    child: Gmap(   onPicked: (pickedData) {
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
          }),

        ),
    );
  }
}
