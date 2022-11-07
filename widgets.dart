import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/contactus.dart';
import 'package:untitled/events.dart';
import 'package:untitled/feedback.dart';
import 'package:untitled/gallery.dart';
import 'package:untitled/login.dart';
import 'package:untitled/profile.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            padding: EdgeInsets.only(top:50, left:100),
            child: Text('Home', style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10)
                ),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),

          ),
          ListTile(
            leading: const Icon(Icons.account_circle_sharp),
            title: const Text('Profile'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()))},
          ),
          ListTile(
            leading: const Icon(Icons.wysiwyg),
            title: const Text('Events'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Events()))},
          ),
          ListTile(
            leading: const Icon(Icons.perm_media_rounded),
            title: const Text('Gallery'),
            //onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery()))},
          ),
          ListTile(
            leading: const Icon(Icons.pending_actions_rounded),
            title: const Text('Feedback'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => FeedBack()))},
          ),
          ListTile(
            leading: const Icon(Icons.perm_phone_msg_rounded),
            title: const Text('Contact Us'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()))},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Login()))},
          ),
        ],
      ),
    );
  }
}