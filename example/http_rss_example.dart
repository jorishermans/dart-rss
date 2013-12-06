import 'package:rss/dart_rss.dart';
import 'dart:html';

void main() {
  var request = HttpRequest.getString("http://tweakers.mobi/rss/nieuws").then(onDataLoaded);
}

void onDataLoaded(data) {
  var rssParser = new RssParser(data);

  rssParser.onProcess().listen((e) => print("listen: $e"));
}