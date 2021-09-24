import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/blocs/date_of_birth/DateOfBirthCubit.dart';
import 'package:testapp/blocs/date_of_birth/DateOfBirthState.dart';
import 'package:testapp/blocs/track_option/TrackOptionCubit.dart';
import 'package:testapp/blocs/track_option/TrackOptionState.dart';

class ViewSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        width: width,
        height: height,
        child: Center(
          child: Container(
            height: height * 0.5,
            decoration: BoxDecoration(color: Color(0xFFFFE3E3), borderRadius: BorderRadius.circular(24)),
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Summary:',
                  style: TextStyle(color: Color(0xff1c2e4a), fontFamily: 'Lato-Bold', fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    BlocBuilder<TrackOptionCubit, TrackOptionState>(
                      builder: (context, state) {
                        return TextFormField(
                          enabled: false,
                          onChanged: (String value) {},
                          decoration: InputDecoration(
                            isDense: true,
                          ),
                          initialValue: state.title ?? '',
                          style: TextStyle(color: Color(0xff1c2e4a), fontFamily: 'Lato-Bold', fontSize: 18),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Date of Birth',
                      style: TextStyle(color: Color(0xff1c2e4a), fontFamily: 'Lato-Bold', fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    BlocBuilder<DateOfBirthCubit, DateOfBirthState>(
                      builder: (context, state) {
                        return TextFormField(
                          enabled: false,
                          onChanged: (String value) {},
                          decoration: InputDecoration(
                            isDense: true,
                          ),
                          initialValue: '${state.date ?? ''}',
                          style: TextStyle(color: Color(0xff1c2e4a), fontFamily: 'Lato-Bold', fontSize: 18),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
