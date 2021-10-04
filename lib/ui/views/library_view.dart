import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';
import 'package:spotify_clone/ui/widgets/category_button.dart';
import 'package:spotify_clone/ui/widgets/playlist_tile.dart';

//maguire

class LibraryView extends StatelessWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            toolbarHeight: 60,
            backgroundColor: Colors.black,
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.purpleAccent,
                      child: Text(
                        'B',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      "Your Library",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 24),
                    ),
                  ],
                ),
                // SizedBox(width: 90),
                Row(
                  children: [
                    Icon(CupertinoIcons.search),
                    SizedBox(
                      width: 20.w,
                    ),
                    Icon(CupertinoIcons.add),
                  ],
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                  children: [
                    CategoryButton(categoryName: 'Playlists'),
                    SizedBox(width: 10.w),
                    CategoryButton(categoryName: 'Artists'),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.arrow_up_arrow_down,
                          size: 12,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Recently added',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    Icon(
                      CupertinoIcons.square_grid_2x2,
                      size: 15,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 10.w),
                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return PlaylistTile(
                        playlistType: index % 4 == 0
                            ? PlaylistType.artist
                            : PlaylistType.playlist);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10.h);
                  },
                  itemCount: 10,
                ),
                SizedBox(
                  height: kBottomNavigationBarHeight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
