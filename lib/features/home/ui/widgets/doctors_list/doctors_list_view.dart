import '../../../data/models/specializations_response_model.dart';
import 'doctors_list_view_item.dart';
import 'package:flutter/material.dart';

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
