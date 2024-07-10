import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc_doc/features/home/logic/home_cubit.dart';
import 'package:doc_doc/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?> specializationDataList;

  const SpecialityListView({super.key, required this.specializationDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedSpecializationIndex = index;
            });
            context.read<HomeCubit>().getDoctorsList(
                  specializationId: widget.specializationDataList[index]?.id,
                );
          },
          child: SpecialityListViewItem(
            index: index,
            selectedIndex: selectedSpecializationIndex,
            specializationsData: widget.specializationDataList[index],
          ),
        ),
        itemCount: widget.specializationDataList.length,
      ),
    );
  }
}
