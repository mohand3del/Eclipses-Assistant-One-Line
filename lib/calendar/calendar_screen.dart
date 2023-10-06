import 'package:flutter/material.dart';
import 'package:nasa_app/calendar/video_olayer_screen.dart';

import 'package:table_calendar/table_calendar.dart';


class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late CustomVideoPlayerScreen _videoPlayerScreen;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();


  int _currentIndex = 0;
  Map<DateTime,String> videoPaths = {
    DateTime(2023,10,19) : 'assets/animation_lmju9har.mp4',
    DateTime(2023,10,18) : 'assets/test.mp4'
  };
  @override
  void initState() {
    super.initState();
    _videoPlayerScreen = CustomVideoPlayerScreen(videoFilePath: '');
  }
  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    print("New Date" + selectedDay.toString());
    print("Old Date" + _selectedDay.toString());
    setState(() {
      _selectedDay = selectedDay;
      if(_selectedDay.month == 10 && _selectedDay.day == 19){

      }
    });

    final videoPath = videoPaths[selectedDay];
    if (videoPath != null) {
      _videoPlayerScreen = CustomVideoPlayerScreen(videoFilePath: videoPath);
    } else {
      _videoPlayerScreen = CustomVideoPlayerScreen(videoFilePath: '');
    }
    setState(() {

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          TableCalendar(

            calendarFormat: _calendarFormat,
            focusedDay: DateTime(2021,9,15),
            firstDay: DateTime(2021),
            lastDay: DateTime(2022),
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: _onDaySelected,
          ),
          Expanded(
            flex: 1,
            child: _selectedDay.month == 11 && _selectedDay.day == 19
                ? CustomVideoPlayerScreen(
                videoFilePath: 'assets/eclipse19nov.mp4')
                : (_selectedDay.month == 12 && _selectedDay.day == 4
                ? CustomVideoPlayerScreen(
                videoFilePath: 'assets/eclipse4dec.mp4')
                : Container(
              padding: EdgeInsets.only(top: 100),
              child: Text('Not Event',style: TextStyle(fontSize: 20),),
            )),
          ),
        ],
      ),

    );
  }
}