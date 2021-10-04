import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';
import 'package:spotify_clone/ui/widgets/genre_card.dart';
import 'package:spotify_clone/ui/widgets/playlist_tile.dart';
import 'package:spotify_clone/ui/widgets/search_bar_button.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      color: Colors.black,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 71.h,
            backgroundColor: Colors.black54,
            elevation: 0,
            titleSpacing: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Search",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30),
              ),
            ),
            pinned: false,
          ),
          SliverAppBar(
            //toolbarHeight: 50,
            title: SearchBarButton(),
            elevation: 0,
            pinned: true,
            titleSpacing: 0,
            backgroundColor: Colors.black,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Your top genres",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 28.h),
                    GridView(
                      physics: ClampingScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.w,
                        mainAxisSpacing: 15.w,
                        childAspectRatio: 1.75961,
                      ),
                      children: [
                        GenreCard(
                          backgroundColor: Color(0xFF8D67AB),
                          genreTitle: 'Pop',
                          albumUrl: 'album-2',
                        ),
                        GenreCard(
                          genreTitle: 'Hip Hop',
                          backgroundColor: Color(0xFFBA5D07),
                          albumUrl: 'album-7',
                        ),
                        GenreCard(
                          genreTitle: 'Afro',
                          backgroundColor: Colors.red,
                          albumUrl: 'album-5',
                        ),
                        GenreCard(
                          genreTitle: 'R & B',
                          backgroundColor: Color(0xFFDC148C),
                          albumUrl: 'album-9',
                        ),
                      ],
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      "Browse all",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20),
                    GridView.builder(
                      physics: ClampingScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.w,
                        mainAxisSpacing: 15.w,
                        childAspectRatio: 1.75961,
                      ),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return GenreCard(
                          backgroundColor: AppColors.green,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchViewTwo extends StatelessWidget {
  final List<Map<String, String>> recentSearchData = [
    {'artist': 'J. Cole', 'title': '4 your eyez only'},
    {'artist': 'Travis Scott', 'title': 'Black Scot man'},
    {'artist': 'The Weeknd', 'title': 'Mountains can see'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF191919),
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 16.w,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 35.h,
              width: 290.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xFF303030),
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 12.5,
                    ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 12.5,
                      ),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                    size: 20.r,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 11,
                    ),
              ),
            ),
            Icon(
              Icons.camera_alt_outlined,
              size: 20.r,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 19.h),
            Text(
              "Recent searches",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                  ),
            ),
            SizedBox(height: 19.h),
            ListView.separated(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) => PlaylistTile(
                title: recentSearchData[index % recentSearchData.length]
                    ['title'],
                subtitle: recentSearchData[index % recentSearchData.length]
                    ['artist'],
                imgUrl: 'album-${index % 10 + 1}'.jpg,
                playlistType: index % 2 == 0
                    ? PlaylistType.artist
                    : PlaylistType.playlist,
              ),
              separatorBuilder: (context, index) => SizedBox(height: 17.h),
              itemCount: 20,
            )
          ],
        ),
      ),
    );
  }
}
