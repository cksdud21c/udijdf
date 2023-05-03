// main.dart
// 현재 클라이언트 개발 중 : 서버에게 요청을 하고 응답을 기다리는 실행 프로그램이 클라이언트
// 플러터는 모든 것이 위젯임. 따라서 입력하는 위젯들을 각각 class로 구현해서 만들어줌
// 이메일 입력 위젯, 비밀번호 입력위젯. 등등
import 'package:flutter/material.dart';
import 'screens/screen_splash.dart';
import 'screens/screen_index.dart';
import 'screens/screen_login.dart';
import 'screens/screen_register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:untitled/firebase_options.dart';
import 'package:untitled/models/model_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FirebaseAuthProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Shopping mall',
        //routes : 화면 라우팅기능. Navigator보단 화면이 다수일 경우 routes가 간단,편리
        //라우팅 : 메시지에서 목적지까지 갈 수 있는 여러 경로 중 한 가지 경로를 설정해 주는 과정
        //앱의 각 화면을 uri로 구분, 화면 이동시 uri를 호출해서 이동.
        routes: {
          '/index': (context) => IndexScreen(),
          '/login': (context) => LoginScreen(),
          '/splash': (context) => SplashScreen(),
          '/register': (context) => RegisterScreen(),
        },
        initialRoute: '/splash',
        //initialRoute : 앱 실행시 처음 나오는 화면. 즉 로그인 화면
      ),
    );
  }
}