import 'package:flutter/material.dart';
import 'package:foodhub/FavouritePage/layout.dart';
import 'package:foodhub/HomePage/layout.dart';
import 'package:foodhub/SettingPage/layout.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
@override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
// ignore: unused_field
  int _selectedIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _OnItemSelected(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => SettingPage(
              selectItemFunction: (selectedItem) =>
                  _OnItemSelected(selectedItem)),
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),

        ),
      );
    }
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Widget> _widgetOptions = <Widget>[
      HomePage(visible: true),
      FavouritePage(),
      Text("Error"),
    ];

    return (Scaffold(
      body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: _widgetOptions),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
        ],
        selectedLabelStyle:
            GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600),
        unselectedLabelStyle:
            GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFFE724C),
        onTap: _OnItemSelected,
      ),
    ));
  }
}
