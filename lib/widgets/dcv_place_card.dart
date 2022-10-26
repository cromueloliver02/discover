import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../utils/constants.dart';
import '../data/data.dart';

class DCVArticleCard extends StatelessWidget {
  final Article article;

  const DCVArticleCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: SizedBox(
        height: 250,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: article.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(color: Colors.black26),
            _DCVArticleCardHeader(
              author: article.author,
              authorImage: article.authorImage,
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: _DCVArticleCardBody(
                  title: article.title,
                  location: article.location,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DCVArticleCardHeader extends StatelessWidget {
  final String author;
  final String authorImage;

  const _DCVArticleCardHeader({
    Key? key,
    required this.author,
    required this.authorImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 25, 15),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: CircleAvatar(
              radius: 22,
              backgroundImage: CachedNetworkImageProvider(authorImage),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                author,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '3h ago',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.favorite,
                  size: 25,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.bookmark,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DCVArticleCardBody extends StatelessWidget {
  final String title;
  final String location;

  const _DCVArticleCardBody({
    Key? key,
    required this.title,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.play_arrow,
            color: kPrimaryColor,
            size: 30,
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: Text(
                  location,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
