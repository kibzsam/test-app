import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/blocs/date_of_birth/DateOfBirthCubit.dart';
import 'package:testapp/blocs/track_option/TrackOptionCubit.dart';
import 'package:testapp/pages/PageViewSection.dart';

import 'blocs/PageCubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test app',
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => TrackOptionCubit()),
          BlocProvider(create: (context) => DateOfBirthCubit()),
          BlocProvider(create: (context) => PageCubit()),
        ],
        child: PagesViewSection(),
      ),
    );
  }
}
