import 'package:discover/utils/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/dcv_sliver_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (ctx, _) => [
          const DCVSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: Container(
                color: kSecondaryColor,
                height: 100,
              ),
            ),
          ),
        ],
        body: Container(),
      ),
    );
  }
}
