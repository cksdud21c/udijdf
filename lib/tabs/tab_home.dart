//하단바의 홈버튼을 누르면 나오는 화면
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/screen_login.dart';
import 'dart:ui';
import 'package:untitled/screens/input_emotion_screens/screen_now_emotion.dart';
import 'package:untitled/screens/input_place_screens/screen_input_place.dart';
import 'package:untitled/tabs/tab_calender.dart';
import 'package:untitled/tabs/tab_profile.dart';
import 'package:untitled/screens/closet_screens/screen_closet_home.dart';

class TabHome extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 6, 67, 117)),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(255, 6, 67, 117)),
                child: ListTile(
                  title: Text(
                    "MOMA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return now_emotion_Page(title: '감정입력');
                    }),
                  );
                },
                leading: const Icon(Icons.insert_emoticon),
                title: const Text(
                  "감정입력",
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return input_place_Page(title : '장소입력');
                    }),
                  );
                },
                leading: const Icon(Icons.place),
                title: const Text(
                  "장소입력",
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return closet_home_Page(title : '옷장');
                    }),
                  );
                },
                leading: const Icon(Icons.folder_open),
                title: const Text(
                  "옷장",
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return TabCalender();
                    }),
                  );
                },
                leading: const Icon(Icons.calendar_month),
                title: const Text(
                  "달력",
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return TabProfile();
                    }),
                  );
                },
                leading: const Icon(Icons.account_circle),
                title: const Text(
                  "MY",
                ),
              ),

            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Colors.black12,
                  //     spreadRadius: 2,
                  //     blurRadius: 2,
                  //     offset: Offset(2, 2),
                  //   ),
                  // ],
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/gromit.png'),
                    //로고 및 간략 소개글 이미지 넣기
                    // const ListTile(
                    //   title: Text("감정입력"),
                    // )
                  ],
                ),
              ),
            ),
           GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const now_emotion_Page(
                        title: "감정입력",
                      );
                    },
                  ),
                );
              }),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    //Image.asset('assets/images/gromit.png'),
                    const ListTile(
                      title: Text("감정입력"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            ),


            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const input_place_Page(
                        title: "장소입력",
                      );
                    },
                  ),
                );
              }),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    //Image.asset('assets/images/gromit.png'),
                    const ListTile(
                      title: Text("장소입력"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            ),


            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const closet_home_Page(
                        title: "옷장",
                      );
                    },
                  ),
                );
              }),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    //Image.asset("assets/images/gromit.png"),
                    const ListTile(
                      title: Text("옷장"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}