import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify_clone/exports.dart';

class AlbumView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 1.3,
            colors: [
              Color(0x5294DCFF),
              Colors.transparent,
            ],
          ),
        ),
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: ListView(
          children: [
            SizedBox(height: kToolbarHeight),
            Center(
              child: Image.asset(
                'album-1'.jpg,

                height: 272.r,
                width: 272.r,
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              '4 Your Eyez Only',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('album-1'.jpg),
                  radius: 12.r,
                ),
                SizedBox(width: 8.w),
                Text(
                  'J. Cole',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 11,
                        color: AppColors.offWhite,
                      ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              'Album . 2017',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 11,
                    color: AppColors.offWhite,
                  ),
            ),
            SizedBox(height: 13.h),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  child: Row(
                    children: [
                      Icon(Icons.favorite, color: AppColors.green),
                      SizedBox(width: 23.w),
                      SvgPicture.asset('download'.icon,
                          height: 23.r, width: 23.r),
                      SizedBox(width: 23.w),
                      SvgPicture.asset(
                        'more'.icon,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: ClampingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) => SongCard(),
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: 20.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SongCard extends StatelessWidget {
  final songNames = [
    'Hallelujah!',
    'Hail Ghetto',
    'Big boy, little man',
    'Life of el paco',
    'Pick me up, I\'m hurt',
    'Brother brother',
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.backgroundGrey,
      onTap: () {
        Navigator.pushNamed(context, PLAYLIST);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                songNames[Random().nextInt(songNames.length)],
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 14,
                    ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  SvgPicture.asset(
                    'download'.icon,
                    height: 15.r,
                    width: 15.r,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'J. Cole',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 11,
                          color: AppColors.offWhite,
                        ),
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset('more'.icon, color: AppColors.offWhite),
        ],
      ),
    );
  }
}

class CustomSliver extends RenderSliverSingleBoxAdapter {
  CustomSliver({RenderBox? child}) : super(child: child);

  @override
  void performLayout() {
    geometry = SliverGeometry.zero;
    child?.layout(
      constraints.asBoxConstraints(),
      parentUsesSize: true,
    );
    double childExtent = child?.size.height ?? 0;
    geometry = SliverGeometry(
      paintExtent: childExtent,
      maxPaintExtent: childExtent,
      paintOrigin: constraints.scrollOffset,
    );
    setChildParentData(child!, constraints, geometry!);
  }
}
