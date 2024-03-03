import 'package:luxuryrent/pages/profile.dart';
import 'package:luxuryrent/pages/spaces.dart';
import 'package:luxuryrent/pages/home.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
  });

  @override
  State<BottomNav> createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  int currentIndex = 1;

  final PageController controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      const SpacesScreen(),
      const HomeScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/rentaspace.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Rent A Space",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: controller,
        children: pages,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Discover Spaces',
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Image.asset('assets/images/rentaspace.png',
                    width: 35, height: 35),
              ),
              label: 'Scan'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_added_rounded),
            label: 'Profile',
          )
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black54.withOpacity(0.6),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
      ),
    );
  }
}
