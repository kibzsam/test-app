import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/blocs/track_option/TrackOptionState.dart';

class TrackOptionCubit extends Cubit<TrackOptionState> {
  DateTime? selectedDate;

  TrackOptionCubit() : super(TrackOptionState());

  void onSelected(String title, String subtitle) {
    emit(TrackOptionState(title: title, subtitle: subtitle));
  }
}
