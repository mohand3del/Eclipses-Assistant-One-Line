import 'package:bloc/bloc.dart';

class CalendarCubit extends Cubit<DateTime> {
  CalendarCubit() : super(DateTime.now());

  void setSelectedDay(DateTime selectedDay) {
    emit(selectedDay);
  }
}
