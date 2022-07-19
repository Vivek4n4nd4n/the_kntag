import 'dart:io';
//import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:kn_tag/views/login/loginview.dart';

import 'loginview.dart';

class CreatAccountPage extends StatefulWidget {
  const CreatAccountPage({Key? key}) : super(key: key);

  @override
  State<CreatAccountPage> createState() => _CreatAccountPageState();
}

class _CreatAccountPageState extends State<CreatAccountPage> {
  File? image;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  Future pickimage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final temporaryImage = File(image.path);
      setState(() {
        this.image = temporaryImage;
      });
    } on PlatformException catch (e) {
      return 'unable to pick image $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor:  Color.fromARGB(255, 206, 221, 234),
        appBar: AppBar(elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          backgroundColor:  Color.fromARGB(255, 206, 221, 234),
          title: Text(
            'Create Account',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
 Padding(
              padding: const EdgeInsets.all(10.0),
             child:  CircleAvatar(
                          radius: 40,
                          child: image != null
                              ? GestureDetector(
                                  onTap: (() {
                                    pickimage();
                                  }),
                                  child: ClipOval(
                                    child: Image.file(
                                      image!,
                                      height: height / 9.5,
                                      width: width / 6,
                                      fit: BoxFit.cover,
                                    ),
                                  ))
                              : GestureDetector(
                                  onTap: (() {
                                    pickimage();
                                  }),
                                  child: Icon(
                                    Icons.person,
                                    size: height / 12,
                                  )),
             )),
                                   Form(
                key: _form,
                child: Expanded(
                  child: ListView(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your  name.';
                          }
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(08),
                            ),
                            hintText: 'User name',
                            hintStyle: TextStyle(color: Colors.red),
                            labelText: ' Enter Name'),
                        keyboardType: TextInputType.text,
                        onSaved: (String? value) {},
                        controller: _name,
                        autofocus: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Email.';
                          }
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(08),
                            ),
                            hintText: 'Email Id',
                            hintStyle: TextStyle(color: Colors.red),
                            labelText: 'Enter Email'),
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (String? value) {},
                        controller: _email,
                        autofocus: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(08),
                              ),
                              hintText: 'Enter password',
                              hintStyle: TextStyle(color: Colors.red),
                              labelText: 'Enter password'),
                          controller: _pass,
                          validator: (val) {
                            if (val!.isEmpty) return 'Please Enter password';
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(08),
                              ),
                              hintText: 'Confirm password',
                              hintStyle: TextStyle(color: Colors.red),
                              labelText: 'Enter Confirm password'),
                          controller: _confirmPass,
                          validator: (val) {
                            if (val!.isEmpty)
                              return 'Please Enter Confirm password';
                            if (val != _pass.text) return 'Not Match';
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _form.currentState!.validate();
                        },
                        style: ElevatedButton.styleFrom(primary:
                        Color.fromARGB(255, 9, 76, 203) ),
                        child: Text("Create Account"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          'Already Have an Account',style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ]),
                ))

        
                          
                        
           
            ],
          
    )));
  }
}
