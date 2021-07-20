import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telkomsel_app/general/general_variables.dart';
import 'package:telkomsel_app/pages/bot_nav_pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/beranda.svg",
              color: _selectedIndex == 0
                  ? GeneralVariables.primaryRedColor
                  : GeneralVariables.darkGreyColor,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/riwayat.svg",
              color: _selectedIndex == 1
                  ? GeneralVariables.primaryRedColor
                  : GeneralVariables.darkGreyColor,
            ),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bantuan.svg",
              color: _selectedIndex == 2
                  ? GeneralVariables.primaryRedColor
                  : GeneralVariables.darkGreyColor,
            ),
            label: 'Bantuan',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/inbox.svg",
              color: _selectedIndex == 3
                  ? GeneralVariables.primaryRedColor
                  : GeneralVariables.darkGreyColor,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/akun.svg",
              color: _selectedIndex == 4
                  ? GeneralVariables.primaryRedColor
                  : GeneralVariables.darkGreyColor,
            ),
            label: 'Akun Saya',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: GeneralVariables.primaryRedColor,
        unselectedItemColor: GeneralVariables.darkGreyColor,
        backgroundColor: GeneralVariables.whiteColor,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
