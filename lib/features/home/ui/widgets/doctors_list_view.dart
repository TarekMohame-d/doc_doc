import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
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
                      'Name',
                      style: TextStyles.font18DarkBlueBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(5),
                    Text(
                      'Degree | 0126514681465',
                      style: TextStyles.font12GrayMedium,
                    ),
                    verticalSpace(5),
                    Text(
                      'temp.test@gmail.com',
                      style: TextStyles.font12GrayMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
