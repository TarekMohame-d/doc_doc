import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => DoctorsListViewItem(
          doctorsModel: doctorsList?[index],
        ),
        itemCount: doctorsList?.length,
      ),
    );
  }
}
