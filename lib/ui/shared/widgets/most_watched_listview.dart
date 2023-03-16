import 'package:advisor_user_app/ui/shared/widgets/most_watched_video_widget.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MostWatchedVideoWidget extends StatelessWidget {
  const MostWatchedVideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) => const MostWatchedVideoo()),
      ),
    );
  }
}
