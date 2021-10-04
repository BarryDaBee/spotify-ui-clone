import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/exports.dart';
import 'package:spotify_clone/ui/views/library_view.dart';
import 'package:spotify_clone/ui/widgets/now_playing_card.dart';

import 'home_view.dart';
import 'search_view.dart';

class BaseView extends StatefulWidget {
  const BaseView({Key? key}) : super(key: key);

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  int currentIndex = 0;

  Widget getScreen() {
    switch (currentIndex) {
      case 0:
        return HomeView();
      case 1:
        return SearchView();
      case 2:
        return LibraryView();
      default:
        return HomeView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            backgroundColor: AppColors.backgroundGrey,
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: getScreen(),
            bottomNavigationBar: Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [
                    AppColors.backgroundGrey.withOpacity(0.02),
                    AppColors.backgroundGrey.withOpacity(0.05),
                    AppColors.backgroundGrey.withOpacity(0.2),
                    AppColors.backgroundGrey.withOpacity(0.45),
                    AppColors.backgroundGrey.withOpacity(0.7),
                    AppColors.backgroundGrey.withOpacity(0.8),
                    AppColors.backgroundGrey.withOpacity(1),
                    AppColors.backgroundGrey,
                    AppColors.backgroundGrey,
                  ],
                ),
              ),
              child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                showUnselectedLabels: true,
                unselectedLabelStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade500,
                ),
                selectedLabelStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
                showSelectedLabels: true,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey[500],
                type: BottomNavigationBarType.fixed,
                currentIndex: currentIndex,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(
                      'home_active'.svg,
                      color: Colors.white,
                    ),
                    icon: SvgPicture.asset('home'.icon),
                    backgroundColor: AppColors.backgroundGrey.withOpacity(0.6),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.search,
                      color: Colors.grey[500],
                    ),
                    activeIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                    ),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(
                      'library'.icon,
                      color: Colors.white,
                    ),
                    backgroundColor: AppColors.backgroundGrey.withOpacity(0.6),
                    icon: SvgPicture.asset(
                      'library'.icon,
                      color: Colors.grey[500],
                    ),
                    label: 'Your Library',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: kBottomNavigationBarHeight,
            child: NowPlayingCard(),
          ),
        ],
      ),
    );
  }
}
