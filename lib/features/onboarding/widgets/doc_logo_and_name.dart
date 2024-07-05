import '../../../core/helpers/spacing.dart';
import '../../../core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
        horizontalSpace(10.0),
        Text(
          'DocDoc',
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
