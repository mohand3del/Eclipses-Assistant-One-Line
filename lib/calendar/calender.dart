import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_app/calendar/video_olayer_screen.dart';
import 'package:nasa_app/cubit/calendar_cubit.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreenn extends StatefulWidget {
  @override
  _CalendarScreennState createState() => _CalendarScreennState();
}

class _CalendarScreennState extends State<CalendarScreenn> {
  late CustomVideoPlayerScreen _videoPlayerScreen;
  CalendarFormat _calendarFormat = CalendarFormat.month;

  int _currentIndex = 0;
  Map<DateTime, String> videoPaths = {
    DateTime(2023, 10, 19): 'assets/animation_lmju9har.mp4',
    DateTime(2023, 10, 18): 'assets/test.mp4'
  };

  @override
  void initState() {
    super.initState();
    _videoPlayerScreen = CustomVideoPlayerScreen(videoFilePath: '');
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    final calendarCubit = BlocProvider.of<CalendarCubit>(context);
    calendarCubit.setSelectedDay(selectedDay);

    final videoPath = videoPaths[selectedDay];
    if (videoPath != null) {
      setState(() {
        _videoPlayerScreen = CustomVideoPlayerScreen(videoFilePath: videoPath);
      });
    } else {
      setState(() {
        _videoPlayerScreen = CustomVideoPlayerScreen(videoFilePath: '');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final calendarCubit = BlocProvider.of<CalendarCubit>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar App'),
      ),
      body: Column(
        children: <Widget>[
          TableCalendar(
            calendarFormat: _calendarFormat,
            focusedDay: DateTime.now(),
            firstDay: DateTime(2023),
            lastDay: DateTime(2024),
            selectedDayPredicate: (day) {
              return isSameDay(calendarCubit.state, day);
            },
            onDaySelected: _onDaySelected,
          ),
          Expanded(
            flex: 1,
            child: _videoPlayerScreen,
          ),
        ],
      ),
    );
  }
}
