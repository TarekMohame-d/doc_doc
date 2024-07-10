import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              'https://c4.wallpaperflare.com/wallpaper/880/719/764/naruto-itachi-uchiha-nukenin-wallpaper-preview.jpg',
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree ?? 'Degree'} | ${doctorsModel?.phone ?? '000000000'}',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? 'temp.test@gmail.com',
                  style: TextStyles.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
