import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc_doc/features/home/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpeciality extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;

  const DoctorSpeciality({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
        ),
        verticalSpace(16),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => DoctorSpecialityListViewItem(
              index: index,
              specializationsData: specializationDataList[index],
            ),
            itemCount: specializationDataList.length,
          ),
        ),
      ],
    );
  }
}
