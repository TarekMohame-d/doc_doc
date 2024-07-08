import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: TextStyles.font18DarkBlueBold,
            ),
            verticalSpace(2),
            Text(
              'How Are you Today?',
              style: TextStyles.font12DimGrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: const Color(0xffF5F5F5),
          child: SvgPicture.asset('assets/svgs/notification_icon.svg'),
        ),
      ],
    );
  }
}
