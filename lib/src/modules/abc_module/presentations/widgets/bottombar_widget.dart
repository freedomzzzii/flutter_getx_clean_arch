import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({required int currentTabIndex, Key? key})
      : _currentTabIndex = currentTabIndex,
        super(key: key);

  final int _currentTabIndex;

  void _navigateToScreen(int newTabIndex) {
    try {
      switch (newTabIndex) {
        case 0:
          // Get.offNamed('/a');
        Get.offNamed('/a');
          break;
        case 1:
          // Get.offNamed('/b');
          Get.offNamed('/b');
          break;
        case 2:
          Get.offNamed('/');
          break;
        default:
          Get.offNamed('/');
          break;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'A',
          icon: Icon(Icons.abc),
        ),
        BottomNavigationBarItem(
          label: 'B',
          icon: Icon(Icons.backpack),
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: _currentTabIndex,
      onTap: (int newTabIndex) => _navigateToScreen(newTabIndex),
    );
  }
}
