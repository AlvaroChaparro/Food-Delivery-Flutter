import 'package:flutter/material.dart';
// Pages
import '../pages/home_page.dart';
import '../pages/cart_page.dart';
import '../pages/profile_page.dart';

// Pantalla principal que controlara los cambios de paginas
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currenTabIndex = 0;
  List<Widget> pages;
  Widget currentPage;
  HomePage homePage;
  CartPage cartPage;
  ProfilePage profilePage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    cartPage = CartPage();
    profilePage = ProfilePage();
    pages = [homePage, cartPage, profilePage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          // Cambio de paginas
          setState(() {
            currenTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currenTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("Cesta")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Perfil")),
        ],
      ),
      body: currentPage,
    );
  }
}
