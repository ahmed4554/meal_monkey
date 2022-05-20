import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:meal_monckey/generated/locale_keys.g.dart';
import 'package:meal_monckey/screens/main/controller.dart';
import 'package:meal_monckey/screens/main/more/view.dart';
import 'package:meal_monckey/screens/main/offers/view.dart';
import 'package:meal_monckey/screens/main/profile/view.dart';
import 'home/view.dart';
import 'menu/view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  List<Widget> pages = [
    const MenuPage(),
    OffersPage(),
    const ProfilePage(),
    const MorePage()
  ];
  Widget body = HomePage();
  int currenIndex = 10;
  List<NabBarModel> navBarModel = [
    NabBarModel(icon: Icons.menu, label: 'Menu'),
    NabBarModel(icon: Icons.shopping_bag, label: 'Offers'),
    NabBarModel(icon: Icons.person, label: 'Profile'),
    NabBarModel(icon: Icons.menu_open_outlined, label: 'More'),
  ];
  Widget buildNavBarItem(NabBarModel model, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          currenIndex = index;
          body = pages[currenIndex];
          setState(() {});
          print(currenIndex);
          print(LocaleKeys.Login.tr());
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              model.icon,
              color: currenIndex == index
                  ? const Color(0xffFC6011)
                  : const Color(0xffB6B7B7),
            ),
            Text(model.label.toString()),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: body,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFC6011),
        onPressed: () {
          currenIndex = 10;
          body = HomePage();
          setState(() {});
        },
        child: const Icon(
          Icons.home,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 15,
        child: Container(
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(4, (index) {
              return buildNavBarItem(navBarModel[index], index);
            }),
          ),
        ),
      ),
    );
  }
}
