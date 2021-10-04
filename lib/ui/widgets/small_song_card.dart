import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';

class SmallSongCard extends StatelessWidget {
  final String? title;
  final String? imgUrl;
  final int? index;
  SmallSongCard({Key? key, this.title, this.imgUrl, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124.r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('album-${index ?? 1}'.jpg),
              ),
            ),
            height: 124.r,
            width: 124.r,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Let\'s go - Stuck in the sound',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
