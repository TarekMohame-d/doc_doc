import 'package:doc_doc/core/themes/styles.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciality',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStyles.font12BlueRegular,
        ),
      ],
    );
  }
}