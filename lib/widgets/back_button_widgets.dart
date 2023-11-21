import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:refrigerator_recipe_app/constants/constants.dart';
import 'package:refrigerator_recipe_app/styles/theme.dart';

//뒤로가기 위젯
class BackButtonWidgets extends StatelessWidget {
  final String appBarText;
  const BackButtonWidgets({required this.appBarText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Text(
          appBarText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            // fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/ico_back.svg'),
          iconSize: 26,
          onPressed: () {
            // 뒤로가기 버튼을 누르면 이전 화면으로 돌아가기
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
    );
  }
}

//텍스트가 왼쪽에 붙은 뒤로가기 위젯
class BackLeftButtonWidgets extends StatelessWidget {
  final String appBarText;
  const BackLeftButtonWidgets({required this.appBarText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            appBarText,
            style: TextStyle(
              color: Colors.black,
              // fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/ico_back.svg'),
          iconSize: 26,
          onPressed: () {
            // 뒤로가기 버튼을 누르면 이전 화면으로 돌아가기
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
    );
  }
}

//저장 기능있는 뒤로가기 위젯
class SettingBackButtonWidgets extends StatelessWidget {
  final String appBarText;
  final VoidCallback onPressed;
  const SettingBackButtonWidgets(
      {required this.appBarText, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Text(
          appBarText,
          style: TextStyle(
            fontSize: 20,
            color: AppTheme.gray_4A,
            // fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/ico_back.svg'),
          iconSize: 26,
          onPressed: () {
            // 뒤로가기 버튼을 누르면 이전 화면으로 돌아가기
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(AppTheme.gray_4A),
              ),
              onPressed: onPressed,
              child: Text(
                '저장',
                style: TextStyle(
                  fontSize: 14,
                  color: AppTheme.gray_4A,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//추가 기능있는 뒤로가기 위젯
class AddBackButtonWidgets extends StatelessWidget {
  final String appBarText;
  final VoidCallback onPressed;
  const AddBackButtonWidgets(
      {required this.appBarText, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Text(
          appBarText,
          style: TextStyle(
            fontSize: 20,
            color: AppTheme.gray_4A,
            // fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/ico_back.svg'),
          iconSize: 26,
          onPressed: () {
            // 뒤로가기 버튼을 누르면 이전 화면으로 돌아가기
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(AppTheme.gray_4A),
              ),
              onPressed: onPressed,
              child: Text(
                '추가',
                style: TextStyle(
                  fontSize: 14,
                  color: AppTheme.gray_4A,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 앱 바 위젯
class AppBerWidgets extends StatelessWidget {
  final String appBarText;

  const AppBerWidgets({required this.appBarText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Text(
          appBarText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }
}

// 냉장고 홈 상단 위젯
class CancellationBackButtonWidgets extends StatelessWidget {
  final String appBarText;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  const CancellationBackButtonWidgets(
      {required this.appBarText,
      required this.onPressed1,
      required this.onPressed2,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaWidth(context, 0.025), vertical: 5),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppTheme.gray_D4),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(AppTheme.gray_4A),
                  //보더 둥글게
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  //자동 패딩 제거
                  minimumSize: MaterialStateProperty.all(Size.zero),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: onPressed1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3, vertical: 6),
                      child: Image.asset(
                        'assets/images/img_condiment.png',
                      ),
                    ),
                    Text(
                      '조미료 ',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppTheme.gray_4A,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              appBarText,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppTheme.gray_D4),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all(AppTheme.gray_4A),
                    //보더 둥글게
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //자동 패딩 제거
                    minimumSize: MaterialStateProperty.all(Size.zero),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  onPressed: onPressed2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Image.asset(
                          'assets/images/img_receipt.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 0),
                        child: Text(
                          '영수증 등록',
                          style: TextStyle(
                            fontSize: 8,
                            color: AppTheme.gray_4A,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}

//임시저장 뒤로가기
class temporaryStorageBackButtonWidgets extends StatelessWidget {
  final String appBarText;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  //임시 저장 활성화 (오른쪽 끝)
  final bool isSave;
  //닫기 버튼 활성화 (왼쪽 끝)
  final bool isClose;
  const temporaryStorageBackButtonWidgets(
      {required this.appBarText,
      required this.onPressed1,
      required this.onPressed2,
      required this.isSave,
      required this.isClose,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Text(
          appBarText,
          style: TextStyle(
            fontSize: 16,
            color: AppTheme.gray_4A,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        leading: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(AppTheme.gray_4A),
          ),
          child: isClose == false
              ? Text(
                  '취소',
                  style: TextStyle(fontSize: 14),
                )
              : Icon(
                  Icons.close,
                  size: 20,
                ),
          onPressed: onPressed1,
        ),
        elevation: 0,
        actions: [
          isSave == true
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all(AppTheme.gray_4A),
                    ),
                    onPressed: onPressed2,
                    child: Text(
                      '임시 저장',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppTheme.gray_4A,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
