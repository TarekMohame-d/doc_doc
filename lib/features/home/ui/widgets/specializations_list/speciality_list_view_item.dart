import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/colors.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListViewItem extends StatelessWidget {
  const SpecialityListViewItem({
    super.key,
    required this.index,
    this.specializationsData,
    required this.selectedIndex,
  });
  final SpecializationsData? specializationsData;
  final int index;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: index == 0 ? 0 : 24.0.w,
      ),
      child: Column(
        children: [
          index == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsManager.darkBlue,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: ColorsManager.lightBlue,
                    child: Image.asset(
                      'assets/images/man_doctor.png',
                      height: 42.0.h,
                      width: 42.0.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 32,
                  backgroundColor: ColorsManager.lightBlue,
                  child: Image.asset(
                    'assets/images/man_doctor.png',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'Specialization',
            style: index == selectedIndex
                ? TextStyles.font14DarkBlueBold
                : TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
