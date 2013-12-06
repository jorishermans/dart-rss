part of dart_rss;

class RssMediaContent extends Observable {
  String type;
  String url;
  String width;
  String height;
  
  RssMediaThumbnail thumbnail;
  
  String toString() => "[$type] $url ($width x $height) -> $thumbnail";
}