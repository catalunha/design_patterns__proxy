import 'package:design_patterns__proxy/caching_downloader.dart';
import 'package:design_patterns__proxy/downloader.dart';
import 'package:design_patterns__proxy/simple_downloader.dart';

void execute() {
  print('Abordando: https://refactoring.guru/pt-br/design-patterns/proxy');
  print("Executing client code with real subject:");
  var realsubject = SimpleDownloader();
  clientCode(realsubject);
  var proxy = CachingDownloader(downloader: realsubject);
  clientCode(proxy);
}

clientCode(Downloader subject) {
  subject.download('http://example.com/');
  subject.download('http://example.com/');
}
