import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavDrawer(),
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Container(
          //color: Colors.blueGrey,
          padding: const EdgeInsets.only(top: 40, left: 20, right: 15),
          child: Column(
            children: [

              Row(
                  children: [
                    Container(
                      child: Text('Main Screen Here',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ]
              ),
            ],
          ),

        )
    );
  }
}