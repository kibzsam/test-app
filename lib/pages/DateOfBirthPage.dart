import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:testapp/blocs/PageCubit.dart';
import 'package:testapp/blocs/date_of_birth/DateOfBirthCubit.dart';
import 'package:testapp/blocs/date_of_birth/DateOfBirthState.dart';

class DateOfBirth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: BlocBuilder<DateOfBirthCubit, DateOfBirthState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(color: Colors.white),
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 48),
                  child: Text(
                    'Log in your date of birth',
                    style: TextStyle(
                      color: Color(0xff1c2e4a),
                      fontFamily: 'Lato-Black',
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(
                  child: DatePickerWidget(
                    lastDate: DateTime.now(),
                    looping: false,
                    firstDate: DateTime(1960),
                    dateFormat: "dd-MMMM-yyyy",
                    onChange: (DateTime newDate, _) => context.read<DateOfBirthCubit>().onDateChanged(newDate),
                    pickerTheme: DateTimePickerTheme(
                        itemTextStyle: TextStyle(color: Colors.black, fontSize: 48, fontFamily: 'Lato-Black'),
                        dividerColor: Colors.white,
                        pickerHeight: height * 0.6),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: height * 0.07, width: width * 0.45),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      gradient: LinearGradient(
                        begin: Alignment(-0.95, 0.0),
                        end: Alignment(1.0, 0.0),
                        colors: [const Color(0xffa5a4cb), const Color(0xff8989bb)],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      ),
                      onPressed: () => context.read<PageCubit>().updatePageState(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Lato-Regular'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 32),
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff1c2e4a)),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
