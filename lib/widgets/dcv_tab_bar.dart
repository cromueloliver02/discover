import 'package:flutter/material.dart';
import '../utils/constants.dart';

class DCVTabBar extends StatelessWidget {
  final List<String> cities;
  final int selectedIndex;
  final void Function(int) onTap;

  const DCVTabBar({
    super.key,
    required this.cities,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          cities.length,
          (idx) {
            final city = cities[idx];

            return _DCVTab(
              city: city,
              index: idx,
              isSelected: selectedIndex == idx,
              onTap: () => onTap(idx),
            );
          },
        ),
      ),
    );
  }
}

class _DCVTab extends StatelessWidget {
  final String city;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  const _DCVTab({
    Key? key,
    required this.city,
    required this.index,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Flexible(
              child: Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(10),
                child: Text(
                  city,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          if (isSelected)
            Positioned(
              bottom: 10,
              child: Container(
                width: 20,
                height: 5,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
