import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_kntag/bottombar/bottombar.dart';
import 'package:the_kntag/massege/Chat/msg_widow_chat.dart';
import 'package:the_kntag/profile/prof_save_view.dart';
import 'package:the_kntag/profile/prof_savedpage.dart';
import 'package:the_kntag/profile/profile.dart';
import 'package:the_kntag/views/home/homeview.dart';
import 'package:the_kntag/views/loginview.dart/loginview.dart';
import 'package:the_kntag/views/loginview.dart/shared_pref.dart';
//import 'package:the_kntag/group/group_people/groupview/groupview.dart';

import 'group/groupview/groupview.dart';
//import 'package:the_kntag/views/loginview.dart/loginview.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var username = UserSimplePreferences.getUserName() ?? '';
    var password = UserSimplePreferences.getPassword() ?? '';
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: username != null && password != null
              ? Bottombar()
              //  Chatwindow()
              : LoginPage()
          //ProfilePage()
          // ProfSaveView()
          // ProfilePage()

          //   Bottombar()
          //GroupView()
          // Homeview()
          //
          //const MyHomePage(title: 'Flutter Demo Home Page'),
          );
    });
  }
}
