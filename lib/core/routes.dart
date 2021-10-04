import 'package:flutter/material.dart';
import 'package:spotify_clone/core/route_constants.dart';
import 'package:spotify_clone/ui/route_animations/slide_up_route.dart';
import 'package:spotify_clone/ui/views/album_view.dart';
import 'package:spotify_clone/ui/views/artiste_info_view.dart';
import 'package:spotify_clone/ui/views/base_view.dart';
import 'package:spotify_clone/ui/views/now_playing_view.dart';
import 'package:spotify_clone/ui/views/playlist_view.dart';
import 'package:spotify_clone/ui/views/search_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => BaseView());
      case ARTISTE_INFO:
        return MaterialPageRoute(builder: (context) => ArtisteInfoView());
      case NOW_PLAYING:
        return SlideUpRoute(view: NowPlayingView());
      case ALBUM:
        return MaterialPageRoute(builder: (context) => AlbumView());
      case PLAYLIST:
        return MaterialPageRoute(builder: (context) => PlaylistView());
      case SEARCH:
        return MaterialPageRoute(builder: (context) => SearchViewTwo());
      default:
        return MaterialPageRoute(builder: (context) => BaseView());
    }
  }
}
