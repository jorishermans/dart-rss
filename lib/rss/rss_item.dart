part of dart_rss;

class RssItem {
  String title;
  String link;
  String description;
  String pubDate;
  String author;
  
  String toString() => "$title - $link - $description";
}