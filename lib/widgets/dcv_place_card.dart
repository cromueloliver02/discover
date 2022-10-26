import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 25, 15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 28,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: CachedNetworkImageProvider(
                        article.authorImage,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        article.author,
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
            ),
          ],
        ),
      ),
    );
  }
}
