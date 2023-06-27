import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/movie_card.dart';

import '../widgets/special_show_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<String> _trendingNow = [
    'assets/images/breakingbad.jpg',
    'assets/images/blackmirror.jpg',
    'assets/images/deathnote.jpg',
    'assets/images/emilyinparis.jpg',
    'assets/images/friends.jpg',
    'assets/images/thecrown.jpg',
  ];

  final List<String> _blockbusterMovies = [
    'assets/images/joker.jpg',
    'assets/images/avengers.jpg',
    'assets/images/lotr.jpg',
    'assets/images/interstellar.jpg',
    'assets/images/harrypotter.jpg',
    'assets/images/pulpfiction.jpg',
    'assets/images/theprestige.jpg',
  ];

  final List<String> _awardTV = [
    'assets/images/breakingbad.jpg',
    'assets/images/bettercallsaul.jpg',
    'assets/images/theoffice.jpg',
    'assets/images/tbbt.jpg',
    'assets/images/suits.jpg',
    'assets/images/friends.jpg',
    'assets/images/peakyblinders.jpg',
    'assets/images/thecrown.jpg',
  ];

  final List<String> _originals = [
    'assets/images/strangerthings.jpg',
    'assets/images/warriornun.jpg',
    'assets/images/narcos.jpg',
    'assets/images/queen.jpg',
    'assets/images/1899.jpg',
  ];

  final List<String> _anime = [
    'assets/images/bleach.jpg',
    'assets/images/naruto.jpg',
    'assets/images/narutoshippuden.jpg',
    'assets/images/demonslayer.jpg',
    'assets/images/vinlandsaga.jpg',
    'assets/images/jjk.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset(
            'assets/images/netflix_logo.png',
            fit: BoxFit.cover,
          ),
        ),
        backgroundColor: Colors.black.withOpacity(0.5),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cast),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SpecialShowCard(
              image: 'assets/images/wednesday.jpg',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              width: double.infinity,
              child: const Text(
                'Trending Now',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _trendingNow.length,
                itemBuilder: (context, index) {
                  return MovieCard(
                    image: _trendingNow[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              width: double.infinity,
              child: const Text(
                'Blockbuster Movies',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _blockbusterMovies.length,
                itemBuilder: (context, index) {
                  return MovieCard(
                    image: _blockbusterMovies[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              width: double.infinity,
              child: const Text(
                'Award-winning TV Shows',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _awardTV.length,
                itemBuilder: (context, index) {
                  return MovieCard(
                    image: _awardTV[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              width: double.infinity,
              child: const Text(
                'Netflix Originals',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _originals.length,
                itemBuilder: (context, index) {
                  return MovieCard(
                    image: _originals[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              width: double.infinity,
              child: const Text(
                'Anime',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _anime.length,
                itemBuilder: (context, index) {
                  return MovieCard(
                    image: _anime[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset_outlined),
            activeIcon: Icon(Icons.videogame_asset),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_sharp),
            activeIcon: Icon(Icons.ondemand_video),
            label: 'Coming Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download_outlined),
            activeIcon: Icon(Icons.file_download),
            label: 'Downloads',
          ),
        ],
      ),
    );
  }
}
