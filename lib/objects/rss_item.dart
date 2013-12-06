part of dart_rss;

class RssItem extends Observable {
  String title;
  String link;
  String description;
  String pubDate;
  String author;
  
  List<RssMediaContent> rssMediaContents = new List<RssMediaContent>();
  
  void add(RssMediaContent rssMediaContent) {
    this.rssMediaContents.add(rssMediaContent);
  }
  
  String toString() => "$title - $link - $description ($rssMediaContents)";
}