import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavDrawer(),
        appBar: AppBar(
          title: const Text('Feedback'),
        ),
        body: Container(
          //color: Colors.blueGrey,
          padding: const EdgeInsets.only(top: 40, left: 20, right: 15),
          child: Column(
            children: [

              /*Row(
                  children: [
                    Icon(Icons.person,
                        size: 25,),
                    Container(
                      child: Text('Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ]
              ),*/
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your Name',
                  labelText: 'Name',
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today_rounded),
                  hintText: 'Enter your date of birth',
                  labelText: 'DOB',
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'Phone',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Type your feedback here....",
                    labelText: "Your Feedback Comes Here",
                    labelStyle: TextStyle(
                        color: Colors.black
                    ),
                    border: OutlineInputBorder()
                ),
                maxLines: 5,
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: 120.00,

                child: RaisedButton(
                    onPressed: () async {
                      showDialog(context: context, builder: (context){
                        return Container(
                          child: AlertDialog(
                            title: Text("Your feedback was submitted successful!"),
                            actions: [
                              TextButton(onPressed: (){
                                Navigator.of(context).pop();},
                                  child: Text("Ok")),
                            ],
                          ),
                        );
                      }
                      );
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
                        child: Text("Submit",
                          style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),

        )
    );
  }
}