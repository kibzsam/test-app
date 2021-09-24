import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:testapp/blocs/date_of_birth/DateOfBirthState.dart';

class DateOfBirthCubit extends Cubit<DateOfBirthState> {
  DateTime? selectedDate;
  var formatter = new DateFormat('EEE, MMM d, ' 'yy');
  DateOfBirthCubit() : super(DateOfBirthState());

  void onDateChanged(DateTime date) {
    var formattedDate = formatter.format(date);
    emit(DateOfBirthState(date: formattedDate));
  }
}
