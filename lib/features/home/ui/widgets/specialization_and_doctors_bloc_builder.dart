import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/colors.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc_doc/features/home/logic/home_cubit.dart';
import 'package:doc_doc/features/home/logic/home_state.dart';
import 'package:doc_doc/features/home/ui/widgets/doctor_speciality.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationsResponseModel) {
            var specializationList =
                specializationsResponseModel.specializationDataList;
            return setupSuccess(specializationList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return SizedBox(
      height: 100.h,
      child: const Center(
        child: CircularProgressIndicator(
          color: ColorsManager.mainBlue,
        ),
      ),
    );
  }

  Widget setupSuccess(List<SpecializationsData?>? specializationList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpeciality(
            specializationDataList: specializationList ?? [],
          ),
          verticalSpace(8),
          DoctorsListView(
            doctorsList: specializationList?[0]?.doctorsList,
          ),
        ],
      ),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
