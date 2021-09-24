import 'package:equatable/equatable.dart';

class DateOfBirthState extends Equatable {
  DateOfBirthState({this.date, this.originalDate});
  final String? date;
  final DateTime? originalDate;
  @override
  List<Object?> get props => [date, originalDate];
}
