import 'package:equatable/equatable.dart';

class TrackOptionState extends Equatable {
  TrackOptionState({this.title, this.subtitle});

  final String? title, subtitle;

  @override
  List<Object?> get props => [title, subtitle];
}
