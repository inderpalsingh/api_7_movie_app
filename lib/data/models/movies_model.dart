class MoviesModel {
  num? rank;
  String? title;
  String? description;
  String? image;
  String? big_image;
  List<String>? genre;
  String? thumbnail;
  String? rating;
  String? id;
  String? year;
  String? imdbid;
  String? imdb_link;

  MoviesModel({
    required this.rank,
    required this.title,
    required this.description,
    required this.image,
    required this.big_image,
    required this.genre,
    required this.thumbnail,
    required this.rating,
    required this.id,
    required this.year,
    required this.imdbid,
    required this.imdb_link,
  });

  factory MoviesModel.fromJSON(Map<String, dynamic> movieJSON) {
    return MoviesModel(
        rank: movieJSON['rank'],
        title: movieJSON['title'],
        description: movieJSON['description'],
        image: movieJSON['image'],
        big_image: movieJSON['big_image'],
        genre: movieJSON['genre'],
        thumbnail: movieJSON['thumbnail'],
        rating: movieJSON['rating'],
        id: movieJSON['id'],
        year: movieJSON['year'],
        imdbid: movieJSON['imdbid'],
        imdb_link: movieJSON['imdb_link']);
  }
}
