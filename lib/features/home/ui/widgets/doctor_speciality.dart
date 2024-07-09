import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpeciality extends StatelessWidget {
  DoctorSpeciality({super.key});

  final List<DoctorSpecialityItemModel> doctorSpecialityList = [
    DoctorSpecialityItemModel(
      speciality: 'General',
      image: 'assets/images/man_doctor.png',
    ),
    DoctorSpecialityItemModel(
      speciality: 'Neurologic',
      image: 'assets/images/brain.png',
    ),
    DoctorSpecialityItemModel(
      speciality: 'Pediatric',
      image: 'assets/images/baby.png',
    ),
    DoctorSpecialityItemModel(
      speciality: 'Radiology',
      image: 'assets/images/kidneys.png',
    ),
    DoctorSpecialityItemModel(
      speciality: 'General',
      image: 'assets/images/man_doctor.png',
    ),
    DoctorSpecialityItemModel(
      speciality: 'Neurologic',
      image: 'assets/images/brain.png',
    ),
    DoctorSpecialityItemModel(
      speciality: 'Pediatric',
      image: 'assets/images/baby.png',
    ),
    DoctorSpecialityItemModel(
      speciality: 'Radiology',
      image: 'assets/images/kidneys.png',
    ),
  ];

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
            itemBuilder: (context, index) => DoctorSpecialityItem(
              index: index,
              doctorSpecialityItemModel: doctorSpecialityList[index],
            ),
            itemCount: doctorSpecialityList.length,
          ),
        ),
      ],
    );
  }
}

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem({
    super.key,
    required this.doctorSpecialityItemModel,
    required this.index,
  });
  final DoctorSpecialityItemModel doctorSpecialityItemModel;
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
              doctorSpecialityItemModel.image,
              height: 40.0.h,
              width: 40.0.w,
            ),
          ),
          verticalSpace(8),
          Text(
            doctorSpecialityItemModel.speciality,
            style: TextStyles.font12DArkBlueRegular,
          ),
        ],
      ),
    );
  }
}

class DoctorSpecialityItemModel {
  final String speciality;
  final String image;

  DoctorSpecialityItemModel({required this.speciality, required this.image});
}
