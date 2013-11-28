part of dart_rss;

class EnclosureProcessor extends XmlProcessor<RssMediaContent> {
  
  EnclosureProcessor() {
    tagName = "enclosure";
  }
  
  void onOpenTag(String tag) {
     element = new RssMediaContent();
  }
  
  void onAttribute(String key, String value) {
    if (key=="url") {
      element.url = value;
    }
    if (key=="type") {
      element.type = value;
    }
  }
}