class Article {
  final String title;
  final String image;
  final String location;
  final String author;
  final int likes;
  final int comments;
  final int shares;
  bool isLiked = false;

  Article({
    required this.title,
    required this.image,
    required this.comments,
    required this.likes,
    required this.isLiked,
    required this.location,
    required this.shares,
    required this.author,
  });
}

List<Article> articles = [
  Article(
    title: 'Japan\'s second largest metropolitan area',
    image:
        'https://images.wallpaperscraft.com/image/pagoda_architecture_sunlight_131905_1920x1080.jpg',
    comments: 100,
    likes: 32000,
    isLiked: true,
    location: 'Osaka Japan',
    shares: 50,
    author: 'Hussain Mustafa',
  ),
  Article(
    title: 'Known as the sleepless town for obvious reasons',
    image:
        'https://images.wallpaperscraft.com/image/night_lights_buildings_railway_station_ueno_tokyo_59511_1920x1080.jpg',
    comments: 300,
    likes: 50000,
    isLiked: true,
    location: 'Kabuikicho Japan',
    shares: 1250,
    author: 'Tim Salvatore',
  ),
  Article(
    title: 'Japan\'s second largest metropolitan area',
    image:
        'https://images.wallpaperscraft.com/image/street_neon_night_city_139596_1920x1080.jpg',
    comments: 200,
    likes: 10000,
    isLiked: true,
    location: 'Tokyo Japan',
    shares: 1000,
    author: 'Ely Marya',
  ),
];
