import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';

class BigSongCard extends StatelessWidget {
  final int? index;
  BigSongCard({Key? key, this.index}) : super(key: key);

  final randomNumber = Random().nextInt(8);
  final List<Color> colors = [
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.deepOrange,
    Colors.orange,
    Colors.cyan,
    Colors.red,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166.r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 166.r,
            width: 166.r,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage('album-${Random().nextInt(10) + 1}'.jpg),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 10.h,
                  left: 10.w,
                  child: Container(
                    width: 110.w,
                    child: Text(
                      'Donna Summer Mix',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 14.h,
                  left: 0,
                  child: Container(
                      height: 20.h, width: 5.w, color: colors[randomNumber]),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: 166.r,
                    height: 5.w,
                    color: colors[randomNumber],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5.w,
          ),
          Text(
            'Let\'s go - Stuck in the sound',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.grey.shade500),
          )
        ],
      ),
    );
  }
}
