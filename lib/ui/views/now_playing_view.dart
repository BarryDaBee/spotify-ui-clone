import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/exports.dart';
import 'package:spotify_clone/ui/widgets/custom_track_shape.dart';

class NowPlayingView extends StatelessWidget {
  const NowPlayingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF121212),
        padding:
            EdgeInsets.only(left: 24.w, right: 24.w, top: 63.h, bottom: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: Navigator.of(context).pop,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('arrow-down'.icon),
                      Text(
                        "Liked Songs",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SvgPicture.asset('more'.icon),
                    ],
                  ),
                ),
                SizedBox(height: 70.h),
                Image.asset('album-7'.jpg, width: 366.w, height: 366.w),
                SizedBox(height: 59.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Only U (Real Quick)',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 22,
                                  ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          'Ownglow',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 15,
                                    color: Color(0xFFBBBBBA),
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: AppColors.green,
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Column(
                  children: [
                    SizedBox(
                      height: 8.h,
                      child: SliderTheme(
                        data: SliderThemeData(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 6.r),
                          trackShape: CustomTrackShape(),
                          thumbColor: Colors.white.withOpacity(0.8),
                          trackHeight: 2.5,
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF474747),
                        ),
                        child: Slider(
                          value: 7,
                          onChanged: (_) {},
                          max: 10,
                          min: 0,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '0.03',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 11,
                                    color: Color(0xFFBBBBBA),
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        Text(
                          '-3:49',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 11,
                                    color: Color(0xFFBBBBBA),
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 17.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'shuffle'.icon,
                      color: Colors.white,
                    ),
                    Icon(
                      CupertinoIcons.backward_end_fill,
                      size: 40.r,
                    ),
                    Icon(
                      Icons.pause_circle_filled,
                      size: 80.r,
                    ),
                    Icon(
                      CupertinoIcons.forward_end_fill,
                      size: 40.r,
                    ),
                    SvgPicture.asset(
                      'repeat'.icon,
                      color: AppColors.green,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'devices'.icon,
                  color: Colors.white,
                  height: 20.h,
                  width: 20.h,
                ),
                SvgPicture.asset('queue'.icon)
              ],
            )
          ],
        ),
      ),
    );
  }
}
