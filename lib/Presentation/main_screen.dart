import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/colors.dart';
import 'package:instagram_clone/Presentation/home_screen.dart';
import 'package:instagram_clone/Presentation/post_screen.dart';
import 'package:instagram_clone/Presentation/profile_screen.dart';
import 'package:instagram_clone/Presentation/search_screen.dart';

ValueNotifier<int> selectedindex = ValueNotifier(0);

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final List<Widget> pages = const [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedindex,
        builder: (context, index, _) {
          return SafeArea(
            child: pages.elementAt(index),
          );
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedindex,
      builder: (context, newIndex, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: mobileBackgroundColor,
          unselectedItemColor: mobileBackgroundColor,
          currentIndex: newIndex,
          onTap: (value) {
            selectedindex.value = value;
          },
          items: [
            BottomNavigationBarItem(
              //
              icon: Icon(
                  selectedindex.value == 0 ? Icons.home : Icons.home_outlined,
                  size: 35,
                  color: mobileBackgroundColor),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                selectedindex.value == 1 ? Icons.search : Icons.search,
                size: 35,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.add, size: 35, color: mobileBackgroundColor),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                selectedindex.value == 3
                    ? Icons.person_2
                    : Icons.person_2_outlined,
                size: 35,
              ),
              label: '',
            ),
          ],
        );
      },
    );
  }
}
