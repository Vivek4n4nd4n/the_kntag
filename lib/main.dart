import 'package:flutter/material.dart';
import 'package:the_kntag/bottombar/bottombar.dart';
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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:username != null && password != null ? 
        Bottombar()
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
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
