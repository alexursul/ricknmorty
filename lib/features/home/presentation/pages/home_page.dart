import 'package:flutter/material.dart';

import '../../../characters/presentation/pages/characters_page.dart';
import '../../../episodes/presentation/pages/episodes_page.dart';
import '../../../locations/presentation/pages/locations_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          CharactersPage(),
          LocationsPage(),
          EpisodesPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Characters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Locations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Episodes',
          ),
        ],
      ),
    );
  }
}
