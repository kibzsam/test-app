import 'package:equatable/equatable.dart';

class DateOfBirthState extends Equatable {
  DateOfBirthState({this.date});
  final String? date;

  @override
  List<Object?> get props => [date];
}
