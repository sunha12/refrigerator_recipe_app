import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:refrigerator_recipe_app/constants/constants.dart';
import 'package:refrigerator_recipe_app/styles/theme.dart';
import 'package:refrigerator_recipe_app/widgets/back_button_widgets.dart';
import 'package:refrigerator_recipe_app/widgets/navigation_bar_widgets.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //앱 상단 바
            CancellationBackButtonWidgets(
              appBarText: '냉장고',
              onPressed1: () {},
              onPressed2: () {},
              isCondiment: true,
              isReceipt: true,
            ),
          ],
        ),
        bottomNavigationBar: Container(
          child: NavigationBarWidget(
            selectedIndex: 0,
            onItemTapped: _onItemTapped,
          ),
        ),
      ),
    );
  }

//네비게이션 함수
  void _onItemTapped(int index) {
    // 선택한 아이템의 인덱스에 따라 화면 전환 처리
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, 'home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, 'refrigeratorConsumption');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, 'refrigeratorRecipe');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, 'recipeCategory');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, 'MyPage');
        break;
    }
  }
}
