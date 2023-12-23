import 'package:netflix/core/constants/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const endPointsDownload = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const endPointsSearch = "$kBaseUrl/search/movie?api_key=$apiKey";
}
