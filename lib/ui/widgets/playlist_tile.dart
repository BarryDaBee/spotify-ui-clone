import 'package:flutter/cupertino.dart';

import 'package:spotify_clone/exports.dart';
import 'package:flutter/material.dart';

enum PlaylistType { playlist, artist, podcastOrShow, likedSongs }

class PlaylistTile extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final PlaylistType? playlistType;
  final String? imgUrl;
  const PlaylistTile(
      {this.title, this.playlistType, this.imgUrl, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, PLAYLIST);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50.r,
                width: 50.r,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgUrl ?? 'album-1'.jpg),
                  ),
                  color: playlistType == PlaylistType.artist
                      ? Colors.pink
                      : Colors.green,
                  shape: playlistType == PlaylistType.artist
                      ? BoxShape.circle
                      : BoxShape.rectangle,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? 'Unknown',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 12,
                        ),
                  ),
                  SizedBox(height: 8.h),
                  playlistType == PlaylistType.likedSongs
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Transform.rotate(
                              angle: 0.78,
                              child: Icon(
                                CupertinoIcons.pin_fill,
                                color: Colors.green,
                                size: 12,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Liked Songs',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.grey.shade500),
                            ),
                          ],
                        )
                      : Text(
                          subtitle ?? 'Unknown',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: Colors.grey.shade500, fontSize: 11),
                        ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              CupertinoIcons.xmark,
              color: AppColors.offWhite,
              size: 20.r,
            ),
          ),
        ],
      ),
    );
  }
}
