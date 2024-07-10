import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc_doc/features/home/logic/home_cubit.dart';
import 'package:doc_doc/features/home/logic/home_state.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:doc_doc/features/home/ui/widgets/specializations_list/speciality_list_view.dart';
import 'package:doc_doc/features/home/ui/widgets/specializations_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
          specializationsSuccess: (specializationDataList) {
            var specializationList = specializationDataList;
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

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSuccess(List<SpecializationsData?>? specializationList) {
    return SpecialityListView(
      specializationDataList: specializationList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
