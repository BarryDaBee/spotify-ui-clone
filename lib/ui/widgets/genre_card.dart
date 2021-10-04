import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';

class GenreCard extends StatelessWidget {
  final Color? backgroundColor;
  final String? albumUrl;
  final String? genreTitle;
  GenreCard({this.backgroundColor, this.albumUrl, this.genreTitle});

  final Random random = Random();
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

  final List<String> genres = [
    'Hip Hop',
    'Pop',
    'Afro',
    'R & B',
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ARTISTE_INFO);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: backgroundColor,
          border: Border.all(width: 0),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10.r,
              left: 10.r,
              child: Text(
                genreTitle ?? genres[random.nextInt(genres.length)],
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            Positioned(
              bottom: -5.r,
              right: -15.r,
              child: Transform.rotate(
                angle: 5.497787144,
                child: Container(
                  height: 76.r,
                  width: 76.r,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(albumUrl != null
                          ? albumUrl!.jpg
                          : 'album-${random.nextInt(10) + 1}'.jpg),
                    ),
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(-3, 3),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
