part of dart_rss;

class RssParser {
  
  XmlStreamer xmlStreamer;
  XmlObjectBuilder xmlObjectBuilder;
  
  RssParser(String text) {
    this.xmlStreamer = new XmlStreamer(text);
    this.xmlObjectBuilder = new XmlObjectBuilder<RssItem>(xmlStreamer, new RssItemProcessor());
  }
  
  Stream<RssItem> onProcess() => this.xmlObjectBuilder.onProcess();
  
  Stream get onFinished => this.xmlObjectBuilder.onFinished;
}