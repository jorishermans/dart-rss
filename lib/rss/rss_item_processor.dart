part of dart_rss;

class RssItemProcessor extends XmlParentProcessor<RssItem> {
  
  MediaContentProcessor mediaContentProcessor;
  EnclosureProcessor enclosureProcessor;
  
  void registerProcessors() {
    mediaContentProcessor = new MediaContentProcessor(); 
    mediaContentProcessor.onProcess().listen((value) { 
      if (isScope()) element.add(value); 
    });
    enclosureProcessor = new EnclosureProcessor();
    enclosureProcessor.onProcess().listen((value) { 
      if (isScope()) element.add(value); 
    });
    add(enclosureProcessor);
    add(mediaContentProcessor);
  }
  
  RssItemProcessor() {
    tagName = "item";
  }
  
  void onOpenTag(String tag) {
     element = new RssItem();
  }
  
  void onScopedCharacters(String text) {
    if (currentTag=="title") {
      element.title = text;
    }
    if (currentTag=="link") {
      element.link = text;
    }
    if (currentTag=="description") {
      element.description = text;
    }
    if (currentTag=="pubDate") {
      element.pubDate = text;
    }
    if (currentTag=="author") {
      element.author = text;
    }
  }
}