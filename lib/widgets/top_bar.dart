import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {},
            style: const ButtonStyle(splashFactory: NoSplash.splashFactory),
            child: const Text(
              'TV Shows',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: 'Inter',
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          TextButton(
            onPressed: () {},
            style: const ButtonStyle(splashFactory: NoSplash.splashFactory),
            child: const Text(
              'Movies',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: 'Inter',
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          TextButton(
            onPressed: () {},
            style: const ButtonStyle(splashFactory: NoSplash.splashFactory),
            child: const Text(
              'Categories',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: 'Inter',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
