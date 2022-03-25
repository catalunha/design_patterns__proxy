import 'package:design_patterns__proxy/downloader.dart';

class SimpleDownloader implements Downloader {
  @override
  String download(String url) {
    print('Downloading a file from the Internet.');
    print('Downloaded bytes: ${url.length}');
    return url.length.toString();
  }
}
