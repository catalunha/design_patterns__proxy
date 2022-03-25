import 'package:design_patterns__proxy/downloader.dart';
import 'package:design_patterns__proxy/simple_downloader.dart';

class CachingDownloader implements Downloader {
  final SimpleDownloader downloader;
  var cache = <String>[];
  CachingDownloader({required this.downloader});
  @override
  String download(String url) {
    String result;
    if (!cache.contains(url)) {
      print('CacheProxy MISS.');
      result = downloader.download(url);
      cache.add(url);
    } else {
      print('CacheProxy HIT. Retrieving result from cache');
      result = cache.firstWhere((element) => element == url).length.toString();
    }
    return result;
  }
}
