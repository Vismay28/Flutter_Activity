import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text('Contact Us'),
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
                          "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996&t=st=1654153940~exp=1654154540~hmac=2e974e3d064689ef3644a25059ae36a3531b85eea60562b8357fd46b790b1c46",
                        ),
                        radius: 80.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Project Manager",
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
                                    Icon(Icons.phone_in_talk_rounded),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "0123456789",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.blueGrey,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(

                                  children: [
                                    Icon(Icons.email_rounded),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "abcdefghi123@gmail.com",
                                      style: TextStyle(
                                        fontSize: 15.0,
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
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Feel free to contact s on the company mail adress or the given phone number. ',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Icon(Icons.ring_volume_rounded),
                  Text("Give us a call. ",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Icon(Icons.access_time_rounded),
                  Text("We’re here for you 24/7.",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 70.0,),
                  Text("International phone charges may apply, depending on your carrier and calling plan.  Some international numbers may not work from mobile phones.",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.red,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 10.0,),
          ],
        ),
        )
        )
        ]
      )
    );
  }
}