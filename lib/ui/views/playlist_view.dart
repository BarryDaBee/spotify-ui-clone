import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';

class PlaylistView extends StatelessWidget {
  const PlaylistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.backgroundGrey,
            expandedHeight: 238.h,
            pinned: true,
            floating: true,
            snap: true,
            leading: GestureDetector(
              onTap: Navigator.of(context).pop,
              child: Icon(Icons.chevron_left),
            ),
            collapsedHeight: kToolbarHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.none),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF2E1C90).withOpacity(0.5),
                      Color(0xFF74737F).withOpacity(0.6),
                      AppColors.backgroundGrey,
                    ],
                    stops: [0.3, 0.6, 0.7],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 88.h),
                    Text(
                      "Liked Songs",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    SizedBox(height: 25.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 49.w, vertical: 20.h),
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: Text(
                        "SHUFFLE PLAY",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 29.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: Text(
                        "ADD SONGS",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Downloading...",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                          CupertinoSwitch(
                            onChanged: (bool value) {},
                            value: true,
                            activeColor: AppColors.green,
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      ListView.separated(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return DownloadingCard();
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 16.h);
                          },
                          itemCount: 20),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DownloadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'album-1'.jpg,
              width: 48.r,
              height: 48.r,
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 208.w,
                  child: Text(
                    'Dancin (feat. Luvli) - Krono Remix',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 12.5,
                        ),
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      'download'.icon,
                      color: AppColors.green,
                      height: 13.r,
                      width: 13.r,
                    ),
                    SizedBox(width: 5.w),
                    SizedBox(
                      width: 208.w,
                      child: Text(
                        'Dancin (feat. Luvli) - Krono Remix',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 10.5,
                              color: AppColors.offWhite,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Icon(
          Icons.favorite,
          color: AppColors.green,
          size: 21.r,
        ),
        SvgPicture.asset(
          'more'.icon,
          color: AppColors.offWhite,
        ),
      ],
    );
  }
}
