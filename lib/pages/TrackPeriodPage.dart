import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/blocs/PageCubit.dart';
import 'package:testapp/blocs/track_option/TrackOptionCubit.dart';
import 'package:testapp/widgets/TrackCard.dart';

class TrackPeriodPage extends StatelessWidget {
  final List tracks = [
    TrackCard(
      title: 'Track my period',
      subtitle: 'contraception and wellbeing',
    ),
    TrackCard(
      title: 'Get pregnant',
      subtitle: 'learn about reproductive health',
    )
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      width: width,
      height: height,
      child: Center(
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 64);
          },
          shrinkWrap: true,
          itemCount: tracks.length,
          itemBuilder: (BuildContext context, int index) {
            final track = tracks[index];
            return InkWell(
              onTap: () {
                context.read<TrackOptionCubit>().onSelected(track.title, track.subtitle);
                context.read<PageCubit>().updatePageState(1);
              },
              child: TrackCard(
                title: track.title,
                subtitle: track.subtitle,
              ),
            );
          },
        ),
      ),
      color: Colors.white,
    );
  }
}
