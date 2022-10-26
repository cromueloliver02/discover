import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
    return SizedBox(
      height: 280,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: CachedNetworkImage(
              imageUrl: article.image,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: _DCVArticleCardFooter(
              likes: article.likes,
              comments: article.comments,
              shares: article.shares,
              isLiked: article.isLiked,
            ),
          ),
        ],
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
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
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
      ),
    );
  }
}

class _DCVArticleCardFooter extends StatelessWidget {
  final int likes;
  final int comments;
  final int shares;
  final bool isLiked;

  const _DCVArticleCardFooter({
    Key? key,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.isLiked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 250,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _DCVArticleCardActionButton(
            iconData: isLiked ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
            count: likes,
            onTap: () {},
          ),
          _DCVArticleCardActionButton(
            iconData: MdiIcons.chat,
            count: comments,
            onTap: () {},
          ),
          _DCVArticleCardActionButton(
            iconData: Icons.share,
            count: shares,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _DCVArticleCardActionButton extends StatelessWidget {
  final IconData iconData;
  final int count;
  final VoidCallback onTap;
  final Color color;

  const _DCVArticleCardActionButton({
    Key? key,
    required this.iconData,
    required this.count,
    required this.onTap,
    // ignore: unused_element
    this.color = Colors.black54,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: color,
            size: 25,
          ),
          const SizedBox(width: 2),
          Text(
            count.toString(),
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}
