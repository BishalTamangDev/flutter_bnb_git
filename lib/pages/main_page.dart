import 'package:bnb_git/pages/add_post.dart';
import 'package:bnb_git/pages/home.dart';
import 'package:bnb_git/pages/profile.dart';
import 'package:bnb_git/pages/reels.dart';
import 'package:bnb_git/pages/search.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final List<Widget> _pages = [
    Home(),
    Search(),
    AddPost(),
    Reels(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BNB Git App"),
        centerTitle: true,
      ),
      body: IndexedStack(
        // to preserve the individual screen state
        children: [_pages[index]],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // fixed || shifting
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 1,
        iconSize: 26.0,
        currentIndex: index,
        onTap: (newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.add_box_outlined),
            label: "Add Post",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.video_call_outlined),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.supervised_user_circle_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
