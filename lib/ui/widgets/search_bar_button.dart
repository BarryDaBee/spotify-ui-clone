import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';

class SearchBarButton extends StatelessWidget {
  const SearchBarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SEARCH);
      },
      splashColor: Colors.black87,
      child: Container(
        height: 40,
        margin: EdgeInsets.only(bottom: 5),
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.search,
              color: Colors.grey[900],
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Artists, songs or podcasts",
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
