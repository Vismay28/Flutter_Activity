import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';
import 'package:untitled/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blueGrey, Colors.blueAccent]
                  )
              ),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://ga.berkeley.edu/wp-content/uploads/2015/08/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png",
                        ),
                        radius: 40.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Profile_Name",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 22.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(

                                  children: [
                                    Text(
                                      "Posts",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "20",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blueGrey,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(

                                  children: [
                                    Text(
                                      "Downloads",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "05",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blueGrey,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(

                                  children: [
                                    Text(
                                      "Events",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "1200",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blueGrey,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Info:",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontStyle: FontStyle.normal,
                        fontSize: 28.0
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('First Name : _firstName_',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Middle Name : _middleName_',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Last Name : _lastName_',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('DOB : _00/00/0000_',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Number : 0123456789',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Email : abcdef@gmail.com',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 150.00,

            child: RaisedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.blueAccent,Colors.blueGrey]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 150.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text("Back",
                      style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                    ),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}