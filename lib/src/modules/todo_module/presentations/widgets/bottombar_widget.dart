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
          Get.offAllNamed('/');
          break;
        case 1:
          Get.offAllNamed('/home');
          break;
        case 2:
          Get.offAllNamed('/a');
          break;
        case 3:
          Get.offAllNamed('/b');
          break;
        default:
          Get.offAllNamed('/');
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
          label: 'GET',
          icon: Icon(Icons.create),
        ),
        BottomNavigationBarItem(
          label: 'COUNT',
          icon: Icon(Icons.countertops),
        ),
        BottomNavigationBarItem(
          label: 'A',
          icon: Icon(Icons.abc),
        ),
        BottomNavigationBarItem(
          label: 'B',
          icon: Icon(Icons.backpack),
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: _currentTabIndex,
      onTap: (int newTabIndex) => _navigateToScreen(newTabIndex),
    );
  }
}
