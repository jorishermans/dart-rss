part of dart_rss;

class RssMediaContent {
  String type;
  String url;
  String width;
  String height;
  
  RssMediaThumbnail thumbnail;
  
  String toString() => "[$type] $url ($width x $height) -> $thumbnail";
}