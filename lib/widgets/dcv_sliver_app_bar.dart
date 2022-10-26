import 'package:flutter/material.dart';
import '../widgets/dcv_tab_bar.dart';
import '../utils/constants.dart';

class DCVSliverAppBar extends StatefulWidget {
  const DCVSliverAppBar({super.key});

  @override
  State<DCVSliverAppBar> createState() => _DCVSliverAppBarState();
}

class _DCVSliverAppBarState extends State<DCVSliverAppBar> {
  var _selectedIdx = 1;

  @override
  Widget build(BuildContext context) {
    final cities = ['Philippines', 'Japan', 'S. Korea', 'Norway'];

    return SliverAppBar(
      backgroundColor: Colors.white,
      leadingWidth: 70,
      pinned: true,
      title: Image.asset('assets/images/logo_discover.png'),
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
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
          child: DCVTabBar(
            cities: cities,
            selectedIndex: _selectedIdx,
            onTap: (idx) => setState(() => _selectedIdx = idx),
          ),
        ),
      ),
    );
  }
}
