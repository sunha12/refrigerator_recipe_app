import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refrigerator_recipe_app/styles/theme.dart';
import 'package:refrigerator_recipe_app/widgets/back_button_widgets.dart';
import 'package:refrigerator_recipe_app/widgets/mypage_widgets.dart';
import 'package:refrigerator_recipe_app/widgets/navigation_bar_widgets.dart';
import 'package:refrigerator_recipe_app/screens/mypage_recently_viewed_recipes_screens.dart';
import 'package:refrigerator_recipe_app/screens/settings.dart';
import 'package:refrigerator_recipe_app/screens/mypage_scrap_screens.dart';

class MyPageScreens extends StatefulWidget {
  const MyPageScreens({super.key});

  @override
  State<MyPageScreens> createState() => _MyPageScreensState();
}

class _MyPageScreensState extends State<MyPageScreens> {
  final List<Map<String, String>> myRecipes = List.generate(
    12,
    (index) => {
      "image": index % 2 == 0
          ? "assets/images/img_dessert.jpg"
          : "assets/images/img_europe.jpg",
      "name": "레시피 ${index + 1}"
    },
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            AppBar(
              // 뒤로가기 숨김
              automaticallyImplyLeading: false,
              title: Text(
                '마이페이지',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Color(0xffffffff),
              elevation: 0, // 그림자 제거
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: SvgPicture.asset('assets/icons/ico_setting.svg'),
                    iconSize: 26,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Settings(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Center(
              child: Icon(
                Icons.account_circle, // 사용자 프로필 아이콘으로 변경
                size: 100, // 아이콘 크기 조절
                color: Colors.grey, // 아이콘 색상 설정
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                "사용자 닉네임",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: AppTheme.gray_97),
                  bottom: BorderSide(width: 0.5, color: AppTheme.gray_97),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "레시피 스크랩",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            MouseRegion(
              // 호버 상태에서의 색상 설정
              onHover: (_) {},
              child: MypageWidget(),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.5, color: AppTheme.gray_97),
                  bottom: BorderSide(width: 0.5, color: AppTheme.gray_97),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "나의 레시피",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                ),
                itemCount: myRecipes.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(4.0),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 78,
                          height: 78,
                          child: Image.asset(
                            myRecipes[index]["image"]!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            myRecipes[index]["name"]!,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          child: NavigationBarWidget(
            selectedIndex: 4,
            onItemTapped: _onItemTapped,
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
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
