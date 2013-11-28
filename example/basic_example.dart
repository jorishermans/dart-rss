import 'package:rss/dart_rss.dart';

void main() {
  var raw_xml = '''<?xml version="1.0" encoding="UTF-8"?>
    <rss xmlns:content="http://purl.org/rss/1.0/modules/content/" xmlns:taxo="http://purl.org/rss/1.0/modules/taxonomy/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:media="http://search.yahoo.com/mrss/" xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0">
    <channel>
    <title>De Morgen: Home</title>
    <link>http://www.demorgen.be</link>
    <description>Home</description>
    <language>nl-BE</language>
    <copyright>de Persgroep Publishing NV</copyright>
    <pubDate>Wed, 27 Nov 2013 20:33:30 GMT</pubDate>
    <lastBuildDate>Wed, 27 Nov 2013 20:33:30 GMT</lastBuildDate>
    <item>
    <title>CD&amp;V wil één Vlaamse energiepremie</title>
    <link>http://www.demorgen.be/dm/nl/5036/Binnenland/article/detail/1748273/2013/11/27/CD-V-wil-een-Vlaamse-energiepremie.dhtml</link>
    <description>CD&amp;amp;V pleit ervoor om het bestaande Vlaamse premiestelsel te hervormen en te vervangen door &amp;eacute;&amp;eacute;n Vlaamse energiepremie. Daarnaast ...</description>
    <pubDate>Wed, 27 Nov 2013 20:21:00 GMT</pubDate>
    <author>redactie</author>
    <guid isPermaLink="false">http://www.demorgen.be/dm/nl/5036/Binnenland/article/detail/1748273/2013/11/27/CD-V-wil-een-Vlaamse-energiepremie.dhtml</guid>
    <media:content type="image/jpeg" url="http://static2.demorgen.be/static/photo/2013/14/10/11/20131127211940/media_s_6292016.jpg">
    <media:thumbnail url="http://static2.demorgen.be/static/photo/2013/14/10/11/20131127211940/media_s_6292016.jpg" />
    </media:content>
    </item>
    <item>
    <title>Scheenbeenbreuk voor wereldkampioen hink-stap-springen</title>
    <link>http://www.demorgen.be/dm/nl/1005/Meer-Sport/article/detail/1748285/2013/11/27/Scheenbeenbreuk-voor-wereldkampioen-hink-stap-springen.dhtml</link>
    <description>De Fransman Teddy Tamgho, de huidige wereldkampioen in het hink-stap-springen, heeft zijn linkerscheenbeen gebroken tijdens het trainen. Tamgho ...</description>
    <pubDate>Wed, 27 Nov 2013 20:14:00 GMT</pubDate>
    <author>Hans Op de Beeck</author>
    <guid isPermaLink="false">http://www.demorgen.be/dm/nl/1005/Meer-Sport/article/detail/1748285/2013/11/27/Scheenbeenbreuk-voor-wereldkampioen-hink-stap-springen.dhtml</guid>
    <media:content type="image/jpeg" url="http://static2.demorgen.be/static/photo/2013/5/14/9/20131127210358/media_s_6291969.jpg">
    <media:thumbnail url="http://static2.demorgen.be/static/photo/2013/5/14/9/20131127210358/media_s_6291969.jpg" />
    </media:content>
    </item>''';
  var rssParser = new RssParser(raw_xml);

  rssParser.onProcess().listen((e) => print("listen: $e"));
}