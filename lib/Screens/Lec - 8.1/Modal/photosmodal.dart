class PhotosModal {
  late int albumId, id;
  late String title, url, thumbnailUrl;

  PhotosModal(
      {required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl});

  factory PhotosModal.fromMap(Map m1) {
    return PhotosModal(
      albumId: m1['albumId'],
      id: m1['id'],
      title: m1['title'],
      url: m1['url'],
      thumbnailUrl: m1['thumbnailUrl'],
    );
  }
}
