part of dart_rss;

class MediaThumbnailProcessor extends XmlProcessor<RssMediaThumbnail> {
  
  MediaThumbnailProcessor() {
    tagName = "media:thumbnail";
  }
  
  void onOpenTag(String tag) {
     element = new RssMediaThumbnail();
  }
  
  void onAttribute(String key, String value) {
    if (key=="url") {
      element.url = value;
    }
    if (key=="width") {
      element.width = value;
    }
    if (key=="height") {
      element.height = value;
    }
  }
}