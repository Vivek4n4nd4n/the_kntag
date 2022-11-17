import 'package:flutter/material.dart';
//import 'package:kn_tag/views/login/createaccount.dart';

//import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_kntag/bottombar/bottombar.dart';
//import 'package:the_kntag/main.dart';
//import 'package:the_kntag/views/home/homeview.dart';
import 'package:the_kntag/views/loginview.dart/shared_pref.dart';

import 'creataccount.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  String username = '';
  String password = '';

  @override
  void initState() {
    super.initState();

    username = UserSimplePreferences.getUserName() ?? '';
    password = UserSimplePreferences.getPassword() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    //Device heightqqq
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 221, 234),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(alignment: Alignment.topRight,
                child: IconButton(onPressed: (){}, icon:const Icon(Icons.logout_rounded))),
            ),
           
            SizedBox(
              height: height * 0.10,
            ),
            const Center(
              child: Text(
                ' Creat \n Connect \n Celebrate',
                style: TextStyle(
                    fontSize: 40, color: Color.fromRGBO(253, 85, 101, 1)),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: height * 0.07,
                  width: width * 0.9,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(08),
                      ),
                      hintText: 'Email / Username',
                    ),
                    onChanged: (username) => setState(() {
                      this.username = emailController.text;
                    }),
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: height * 0.07,
                width: width * 0.9,
                child: TextField(
                    controller: pwdController,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(08),
                      ),
                      hintText: 'Enter Password',
                    ),
                    onChanged: (password) => setState(() {
                          this.password = pwdController.text;
                        })),
              ),
            ),
            TextButton(
                onPressed: () {
                  
                },
                child: const Text(
                  'Forget Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      decoration: TextDecoration.underline),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: width * 0.89,
                  height: height * 0.07,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 9, 76, 203)),
                      onPressed: () async {
                        await UserSimplePreferences.setUsername(username);
                        await UserSimplePreferences.setPassword(password);
                       // print("User name: $username");
                       // print("Password: $password");

                        var snackBar = SnackBar(
                          content: Text('please enter valid email 0r password'),
                          duration: Duration(seconds: 2),
                        );

                        username == '' || password == '' ?
                             // ignore: use_build_context_synchronously
                             ScaffoldMessenger.of(context).showSnackBar(snackBar)
                                
                            // ignore: use_build_context_synchronously
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Bottombar())));

                      
                      },
                      child: Text('Login'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: width * 0.4,
                    height: height * 0.07,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.google,
                        color: Color.fromARGB(255, 251, 125, 7),
                      ),
                      label: Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white70, onPrimary: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: width * 0.4,
                    height: height * 0.07,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.facebook,
                            color: Color.fromARGB(255, 115, 183, 239)),
                        label: Text(
                          'login',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white70, onPrimary: Colors.white)),
                  ),
                ),
              ],
            ),
            Center(
                child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => CreatAccountPage())));
              },
              child: Text(
                'Register with email',
                style: TextStyle(color: Colors.black),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
