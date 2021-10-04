import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/view_models/genre_view_model.dart';
import 'package:spotify_clone/exports.dart';
import 'package:spotify_clone/ui/widgets/circle_heart.dart';

class ArtisteInfoView extends StatelessWidget {
  const ArtisteInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 408.h,
            pinned: true,
            elevation: 0,
            leading: InkWell(
              onTap: Navigator.of(context).pop,
              child: Icon(CupertinoIcons.chevron_back),
            ),
            backgroundColor: AppColors.backgroundGrey,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'J. Cole',
                textScaleFactor: 1.2,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
              ),
              background: ShaderMask(
                shaderCallback: (Rect bounds) => LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    AppColors.backgroundGrey,
                  ],
                  stops: [0.4, 1],
                ).createShader(bounds),
                child: Image.asset(
                  'album-1'.jpg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1,506,190 monthly listeners',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Color(0xFFBDBCBB),
                                    ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 8.h),
                                    //alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.8, color: Colors.white),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Text(
                                      'FOLLOWING',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24.w,
                                  ),
                                  SvgPicture.asset(
                                    'more'.icon,
                                    color: AppColors.offWhite,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 60.w,
                            width: 60.w,
                            child: Stack(
                              children: [
                                Container(
                                  height: 56.w,
                                  width: 56.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.green,
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 45.r,
                                  ),
                                ),
                                Positioned(
                                  left: 40.w,
                                  top: 40.w,
                                  child: Container(
                                    height: 20.r,
                                    width: 20.r,
                                    padding: EdgeInsets.all(3.3),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: SvgPicture.asset(
                                      'shuffle'.icon,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              buildArtistIcon(),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Liked songs',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 14,
                                        ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    '30 songs . J. Cole',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 11,
                                          color: AppColors.offWhite,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          ///improvising my arrow right icon;
                          RotatedBox(
                            quarterTurns: 2,
                            child: SvgPicture.asset(
                              'arrow-left'.icon,
                              color: AppColors.offWhite,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 38.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Popular',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                    ),
                          ),
                          SizedBox(height: 20.h),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) =>
                                PopularCard(index: index + 1),
                            itemCount: 10,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    SizedBox(height: 16.h),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildArtistIcon() {
    return Container(
      height: 37.5,
      width: 37.5,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 16.r,
            backgroundImage: AssetImage('album-1'.jpg),
          ),
          Positioned(
            left: 15.5.w,
            top: 14.5.w,
            child: CircleHeart(
              radius: 8,
            ),
          ),
        ],
      ),
    );
  }
}

class PopularCard extends StatelessWidget {
  final int? index;
  const PopularCard({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ALBUM);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '${index!}',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              SizedBox(width: 17.w),
              Image.asset('album-${index! % 10 + 1}'.jpg,
                  width: 48.r, height: 48.r),
              SizedBox(width: 12.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Awake',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '12,345,678',
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
