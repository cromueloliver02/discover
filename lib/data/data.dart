class Article {
  final String title;
  final String image;
  final String location;
  final String author;
  final String authorImage;
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
    required this.authorImage,
  });
}

List<Article> articles = [
  Article(
    title:
        'Osaka is a major financial center of Japan, and it is recognized as one of the most multicultural and cosmopolitan cities in Japan.',
    image:
        'https://www.planetware.com/photos-large/JPN/japan-attractions-hiroshima-itsukushima.jpg',
    comments: 100,
    likes: 32000,
    isLiked: true,
    location: 'Osaka, Japan',
    shares: 50,
    author: 'Kentarō Hiroki',
    authorImage:
        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
  ),
  Article(
    title:
        'Japan’s busy capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples.',
    image:
        'https://worldtourtips.com/wp-content/uploads/2020/11/Japan-1-e1606077075928.jpg',
    comments: 300,
    likes: 50000,
    isLiked: false,
    location: 'Tokyo, Japan',
    shares: 1250,
    author: 'Minako Kanna',
    authorImage:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80',
  ),
  Article(
    title:
        'Once the capital of Japan, is a city on the island of Honshu. It\'s famous for its numerous classical Buddhist temples, as well as gardens, imperial palaces.',
    image:
        'https://blog.japanwondertravel.com/wp-content/uploads/2018/12/sorasak-_UIN-pFfJ7c-unsplash.jpg',
    comments: 200,
    likes: 10000,
    isLiked: true,
    location: 'Kyoto, Japan',
    shares: 1000,
    author: 'Kumiko Yumiko',
    authorImage:
        'https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2053&q=80',
  ),
];
