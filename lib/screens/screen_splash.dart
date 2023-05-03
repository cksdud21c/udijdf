// screens/screen_splash.dart
//앱 아이콘을 클릭하고 로딩에 걸리는 1~3초사이 띄워지는 화면.
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//shared_preference : pubsepc.yaml의 설명 읽었으면 이거 주석 보셈
//isLogin값을 가져와서 true면 로그인된 상황이므로 /index화면으로 넘어가고,
//False면 로그인을 해야하므로 /login화면으로 보내면 됨.
class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen>{

  Future<bool> checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLogin = prefs.getBool('isLogin') ?? false;
    return isLogin;
  }//checkLogin() : isLogin값을 가져오는 함수. Future-await : 값을 바로 가져오지 못하므로, async(비동기)로 가져와야함.

  void moveScreen() async {
    await checkLogin().then((isLogin){
      if(isLogin){
        Navigator.of(context).pushReplacementNamed('/index');
      } else {
        Navigator.of(context).pushReplacementNamed('/login');
      }
    });
  }//로그인 여부를 판단하여 홈화면으로 갈지, 로그인 화면으로 갈지 결정.


  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2000), (){
      moveScreen();
    });
  }//2초 딜레이를 가지고 moveScreen()실행.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Center(
          child: Image.asset('assets/images/gromit.png'),
        )
    );
  }//스플래시화면 구성도. 그럼 flutter_launcher_icons.yaml필요 없고, 그냥 여기다가 넣으면 될 듯?
}