import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_list/doctors_bloc_builder.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doc_doc/features/home/ui/widgets/home_top_bar.dart';
import 'package:doc_doc/features/home/ui/widgets/specializations_list/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            20.w,
            16.h,
            20.w,
            28.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const SpecializationsBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
