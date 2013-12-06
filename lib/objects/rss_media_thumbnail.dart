part of dart_rss;

class RssMediaThumbnail extends Observable {
  String url;
  String width;
  String height;
  
  String toString() => "[THUMBNAIL] $url ($width x $height)";
}