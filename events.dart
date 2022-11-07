import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets.dart';
import 'timelinecard.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {

  List<Color> colors = [Colors.red, Colors.green, Colors.blueAccent];
  late List<TimeLineCard> timeline;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timeline = _getCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavDrawer(),
        appBar: AppBar(
          title: const Text('Events'),
        ),
      body: Container(
        child: ListView.builder(
            itemCount: timeline.length,
            itemBuilder: (context,index ){
              return Container(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 2,
                          height: 50,
                          color: index == 0 ? Colors.white : Colors.black,
                        ),
                        Container(
                          //color: Colors.red,
                          margin: EdgeInsets.only(left: 12, right: 12),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: colors[(index +1) % 3],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(timeline[index].icon, color: Colors.white,),
                        ),
                        Container(
                          width: 2,
                          height: 50,
                          color: index == timeline.length - 1 ? Colors.white : Colors.black,
                        ),
                      ],
                    ),
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(top: BorderSide(width: 4, color: Colors.blueAccent)),
                            boxShadow: [BoxShadow(
                              blurRadius: 10,
                              color: Colors.black45,
                            )]
                          ),
                          height: 90,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(timeline[index].title,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(timeline[index].description,
                                style: TextStyle(
                                    fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              );
            }),
      ),
    );
  }
  List<TimeLineCard> _getCards(){
    List<TimeLineCard> timelineCard = [];
    
    timelineCard.add(TimeLineCard("Calendar", "Event Descrition", Icons.calendar_today_rounded));
    timelineCard.add(TimeLineCard("Call", "Event Descrition", Icons.call));
    timelineCard.add(TimeLineCard("Person", "Event Descrition", Icons.person));
    timelineCard.add(TimeLineCard("Entrepreneur", "Event Descrition", Icons.apartment));
    timelineCard.add(TimeLineCard("Focus", "Event Descrition", Icons.pages_rounded));
    timelineCard.add(TimeLineCard("Location Tag", "Event Descrition", Icons.pin_drop_rounded));
    timelineCard.add(TimeLineCard("Event Name 7", "Event Descrition", Icons.calendar_today_rounded));
    timelineCard.add(TimeLineCard("Event Name 8", "Event Descrition", Icons.calendar_today_rounded));
    timelineCard.add(TimeLineCard("Event Name 9", "Event Descrition", Icons.calendar_today_rounded));
    timelineCard.add(TimeLineCard("Event Name 10", "Event Descrition", Icons.calendar_today_rounded));

    return timelineCard;
  }
}

