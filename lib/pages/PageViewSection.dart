import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/blocs/PageCubit.dart';
import 'package:testapp/pages/ViewSummaryPage.dart';

import 'DateOfBirthPage.dart';
import 'TrackPeriodPage.dart';

class PagesViewSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PageCubit, int>(
        builder: (context, state) => PageView.builder(
          key: Key('pageView'),
          itemBuilder: (context, index) => index == 0
              ? TrackPeriodPage()
              : index == 1
                  ? DateOfBirth()
                  : index == 2
                      ? ViewSummary()
                      : TrackPeriodPage(),
          itemCount: 3,
          physics: ClampingScrollPhysics(),
          controller: context.read<PageCubit>().pageController,
          onPageChanged: (page) => context.read<PageCubit>().updatePageState(page),
        ),
      ),
    );
  }
}
