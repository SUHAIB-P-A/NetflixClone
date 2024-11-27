import 'package:netflix/core/constants/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const endPointsDownload = "$kBaseUrl/trending/all/day?api_key=$apiKey";

  static const endPointsSearch = "$kBaseUrl/search/movie?api_key=$apiKey";

  static const endpointsHotandNewMovie =
      "$kBaseUrl/discover/movie?api_key=$apiKey";

  static const endpointsHotandNewTv = "$kBaseUrl/discover/tv?api_key=$apiKey";
}
