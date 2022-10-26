import 'package:flutter/material.dart';
import '../widgets/dcv_sliver_app_bar.dart';
import '../widgets/dcv_place_card.dart';
import '../data/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (ctx, _) => [
          const DCVSliverAppBar(),
        ],
        body: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: articles.length,
          separatorBuilder: (ctx, idx) => const SizedBox(height: 20),
          itemBuilder: (ctx, idx) {
            final article = articles[idx];

            return DCVArticleCard(article: article);
          },
        ),
      ),
    );
  }
}
