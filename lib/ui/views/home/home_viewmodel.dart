import 'package:betuptip/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {

   int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners(); // Notify the View to rebuild
  }

  
  final List<Widget> views = [
    const HomeView(), // Index 0
    const OddsView(), // Index 1
    const NewsView(), // Index 2
    const ProfileView(), // Index 3
  ];

}
