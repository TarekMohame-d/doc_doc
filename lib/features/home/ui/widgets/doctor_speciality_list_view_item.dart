import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({
    super.key,
    required this.index,
    this.specializationsData,
  });
  final SpecializationsData? specializationsData;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: index == 0 ? 0 : 24.0.w,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: const Color(0xffF4F8FF),
            child: Image.asset(
              'assets/images/man_doctor.png',
              height: 40.0.h,
              width: 40.0.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData!.name ?? 'Specialization',
            style: TextStyles.font12DArkBlueRegular,
          ),
        ],
      ),
    );
  }
}
