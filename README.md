### Dart Rss ###

Parsing rss with dart on a streaming way.

	var rssParser = new RssParser(raw_xml);
	rssParser.onProcess().listen((e) => print("listen: $e"));
	
Support now media:content and enclosure elements parsing.