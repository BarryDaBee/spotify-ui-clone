// import 'package:flutter_audio_query/flutter_audio_query.dart';
// import 'package:spotify_clone/exports.dart';
// import 'package:spotify_clone/core/services/audio_query_service.dart';
//
// class SearchViewModel extends BaseViewModel {
//   final AudioQueryService audioQueryService = locator<AudioQueryService>();
//   List<GenreInfo> genres = [];
//   List<SongInfo> songs = [];
//
//   List artistes = [];
//   getSongs() async {
//     setBusy(true);
//     songs = await audioQueryService.getSongs();
//     setBusy(false);
//     notifyListeners();
//   }
//
//   getGenres() async {
//     setBusy(true);
//     genres = await audioQueryService.getGenres();
//     setBusy(false);
//     notifyListeners();
//   }
//
//   getArtistes() async {
//     setBusy(true);
//     artistes = await audioQueryService.getArtistes();
//     setBusy(false);
//     notifyListeners();
//   }
// }
