import 'package:advisor_user_app/ui/shared/widgets/most_watched_video_widget.dart';
import 'package:flutter/material.dart';

class ExpertsTabView extends StatelessWidget {
  const ExpertsTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      //physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => const MostWatchedVideoo(),
    );
  }
}
