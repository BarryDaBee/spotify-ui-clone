import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';
import 'package:spotify_clone/ui/widgets/big_song_card.dart';
import 'package:spotify_clone/ui/widgets/small_song_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Color(0xFF121212),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 80.h),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recently played',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                width: 5.w,
              ),
              Icon(
                CupertinoIcons.bell,
                color: Colors.white,
              ),
              Icon(
                CupertinoIcons.timer,
                color: Colors.white,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 166.h,
            child: ListView.separated(
              itemCount: 7,
              itemBuilder: (context, index) {
                return SmallSongCard(
                  index: index % 10 + 1,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 13.w);
              },
            ),
          ),
          SizedBox(height: 25.h),
          Text(
            'To get you started',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 22.h,
          ),
          SizedBox(
            height: 210.h,
            child: ListView.separated(
              key: PageStorageKey('started'),
              itemCount: 7,
              itemBuilder: (context, index) {
                return BigSongCard();
              },
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 13.w);
              },
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 30.r,
                backgroundImage: AssetImage('album-2'.jpg),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MORE LIKE',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'The Weeknd',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          SizedBox(
            height: 210.h,
            child: ListView.separated(
              itemCount: 7,
              itemBuilder: (context, index) {
                return BigSongCard();
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 14.w);
              },
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 30.r,
                backgroundImage: AssetImage('album-1'.jpg),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MORE LIKE',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'J. Cole',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
          SizedBox(
            height: 210.h,
            child: ListView.separated(
              itemCount: 7,
              itemBuilder: (context, index) {
                return BigSongCard();
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 14.w);
              },
            ),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
