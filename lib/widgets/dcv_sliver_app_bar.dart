import 'package:flutter/material.dart';
import '../utils/constants.dart';

class DCVSliverAppBar extends StatelessWidget {
  const DCVSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.menu,
            color: kSecondaryColor,
            size: 35,
          ),
        ),
      ),
      title: Image.asset('assets/images/logo_discover.png'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.search,
                color: kSecondaryColor,
                size: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
