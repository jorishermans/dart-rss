part of dart_rss;

class MediaContentProcessor extends XmlParentProcessor<RssMediaContent> {
  
  MediaThumbnailProcessor mediaThumbnailProcessor;
  
  void registerProcessors() {
    mediaThumbnailProcessor = new MediaThumbnailProcessor(); 
    mediaThumbnailProcessor.onProcess().listen((value) { 
      if (isScope()) element.thumbnail = value; 
    });
    add(mediaThumbnailProcessor);
  }
  
  MediaContentProcessor() {
    tagName = "media:content";
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
    if (key=="width") {
      element.width = value;
    }
    if (key=="height") {
      element.height = value;
    }
  }
}