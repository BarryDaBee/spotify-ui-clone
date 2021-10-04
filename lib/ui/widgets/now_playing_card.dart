import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';

//Color(0xFF643874) Color(0xFF244448)
class NowPlayingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, NOW_PLAYING);
      },
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF244448).withOpacity(0.9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.brown,
                      child: Image.asset('album-2'.jpg),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Blinding lights',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Text(
                          'The Weeknd',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.heart_solid, color: AppColors.green),
                    SizedBox(width: 15),
                    Icon(Icons.pause)
                  ],
                )
              ],
            ),
            SizedBox(height: 7),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 2.3,
                  color: Colors.white.withOpacity(0.4),
                ),
                Container(
                  width: 100,
                  height: 2.3,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
