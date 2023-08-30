import 'package:flutter/material.dart';
import 'package:news_app/pages/discover_page.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var _tabNum = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 60,
              child: PageView(
                children: [
                  HomePage(),
                  DiscoverPage(),
                ],
                controller: controller,
                onPageChanged: (idx) => setState(() {
                  _tabNum = idx;
                }),
              ),
            ),
          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _tabNum,
          onTap: (idx) => setState(() {
            _tabNum = idx;
            controller.jumpToPage(idx);
          }),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.blue,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.sports_basketball_outlined),
              title: const Text("Discover"),
              selectedColor: Colors.green,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.bookmark),
              title: const Text("Saved"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
