import 'package:flutter/material.dart';
import 'package:ssyrial/screens/account/create/selected_ipchulgeumaccount.dart';

// 상수 정의
const Color kAppBarBackgroundColor = Colors.white;
const Color kAppBarIconColor = Colors.black;
const Color kLoginButtonColor = Colors.blue;
const Color kAccountCreationColor = Colors.orange;
const Color kEasyScreenColor = Colors.green;

const TextStyle kAppBarTextStyle =
    TextStyle(color: kAppBarIconColor, fontWeight: FontWeight.bold);
const TextStyle kButtonTextStyle = TextStyle(color: Colors.white, fontSize: 18);
const TextStyle kFeatureTextStyleActive = TextStyle(color: Colors.blue);
const TextStyle kFeatureTextStyleInactive = TextStyle(color: Colors.grey);
const TextStyle kAccountCreationTextStyle = TextStyle(color: Colors.white);

var screenwidth;
var screenheight;

class Ipchulgeumlist extends StatelessWidget {
  final String title; // 화면의 제목
  final String buttonText; // 버튼에 표시할 텍스트
  final TextStyle? titleTextStyle; // 제목 텍스트 스타일
  final TextStyle? buttonTextStyle; // 버튼 텍스트 스타일
  final Color buttonColor; // 버튼 배경색
  final double buttonPadding; // 버튼의 패딩

  final servicedatas = null; // 상품 정보를 가져와 저장할 변수(리스트가 될 수 있음)

  const Ipchulgeumlist({
    super.key,
    this.title = 'SOL Bank',
    this.buttonText = '도움말 모드',
    this.titleTextStyle,
    this.buttonTextStyle,
    this.buttonColor = Colors.blue, // 기본 버튼 색상
    this.buttonPadding = 16.0, // 기본 버튼 패딩
  });

  @override
  Widget build(BuildContext context) {
    //화면 크기 변환 변수
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      //위젯(그림 및 버튼) 겹치기용 stack 생성
      body: Stack(
        // 그림을 먼저 선언해야 그림이 밑에 깔림
        children: [
          // 바탕화면
          Positioned.fill(
            child: Image.asset(
              'assets/images/CreateAccount_select_ipchulgeum_from_category.png',
              fit: BoxFit.fitHeight,
            ),
          ),

          //뒤로가기
          Positioned(
            top: screenwidth * 0.02,
            child: SizedBox(
              width: screenwidth,
              height: screenheight * 0.15,
              child: TextButton(
                style: TextButton.styleFrom(
                  overlayColor: Colors.transparent,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(''),
              ),
            ),
          ),

          //계좌 1
          Positioned(
            bottom: screenheight * 0.02 + screenheight * 0.33,
            child: SizedBox(
              width: screenwidth,
              height: screenheight * 0.14,
              child: TextButton(
                style: TextButton.styleFrom(
                  overlayColor: Colors.transparent,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SelectedIpchulgeumaccount()), // SignInScreen 화면으로 이동
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: screenheight * 0.04,
                    ),
                    SizedBox(
                      child: Text(
                        "test용 샘플 계좌1",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.04,
                    ),
                    SizedBox(
                      child: Text(
                        "test용 샘플 계좌1",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //계좌 2
          Positioned(
            bottom: screenheight * 0.02 + screenheight * 0.17,
            child: SizedBox(
              width: screenwidth,
              height: screenheight * 0.14,
              child: TextButton(
                style: TextButton.styleFrom(
                  overlayColor: Colors.transparent,
                ),
                onPressed: () {},
                child: Column(
                  children: [
                    SizedBox(
                      height: screenheight * 0.04,
                    ),
                    SizedBox(
                      child: Text(
                        "test용 샘플 계좌2",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.04,
                    ),
                    SizedBox(
                      child: Text(
                        "test용 샘플 계좌2",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //계좌 3
          Positioned(
            bottom: screenheight * 0.028,
            child: SizedBox(
              width: screenwidth,
              height: screenheight * 0.14,
              child: TextButton(
                style: TextButton.styleFrom(
                  overlayColor: Colors.transparent,
                ),
                onPressed: () {},
                child: Column(
                  children: [
                    SizedBox(
                      height: screenheight * 0.04,
                    ),
                    SizedBox(
                      child: Text(
                        "test용 샘플 계좌3",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.04,
                    ),
                    SizedBox(
                      child: Text(
                        "test용 샘플 계좌3",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

extension HomeScreenWidget on Ipchulgeumlist {
  //on 뒤의 항목을 꼭 변경할 것

  // 돌아가기 버튼 생성 함수
  Widget buildBackButton(VoidCallback onPressed) {
    return Positioned(
      top: screenwidth * 0.02,
      child: SizedBox(
        width: screenwidth,
        height: screenheight * 0.15,
        child: TextButton(
          onPressed: () {
            onPressed;
          },
          style: TextButton.styleFrom(
            overlayColor: Colors.transparent,
          ),
          child: Text(''),
        ),
      ),
    );
  }

  // 계좌1 버튼 생성 함수
  Widget buildAccount1Button(VoidCallback onPressed) {
    return Positioned(
      bottom: screenheight * 0.02 + screenheight * 0.33,
      child: SizedBox(
        width: screenwidth,
        height: screenheight * 0.14,
        child: TextButton(
          onPressed: () {},
          child: Column(
            children: [
              SizedBox(
                height: screenheight * 0.04,
              ),
              SizedBox(
                child: Text(
                  "test용 샘플 계좌1",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: screenheight * 0.04,
              ),
              SizedBox(
                child: Text(
                  "test용 샘플 계좌1",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 계좌2 버튼 생성 함수
  Widget buildAccount2Button(VoidCallback onPressed) {
    return Positioned(
      bottom: screenheight * 0.02 + screenheight * 0.17,
      child: SizedBox(
        width: screenwidth,
        height: screenheight * 0.14,
        child: TextButton(
          onPressed: () {},
          child: Column(
            children: [
              SizedBox(
                height: screenheight * 0.04,
              ),
              SizedBox(
                child: Text(
                  "test용 샘플 계좌2",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: screenheight * 0.04,
              ),
              SizedBox(
                child: Text(
                  "test용 샘플 계좌2",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 계좌3 버튼 생성 함수
  Widget buildAccount3Button(VoidCallback onPressed) {
    return Positioned(
      bottom: screenheight * 0.028,
      child: SizedBox(
        width: screenwidth,
        height: screenheight * 0.14,
        child: TextButton(
          onPressed: () {},
          child: Column(
            children: [
              SizedBox(
                height: screenheight * 0.04,
              ),
              SizedBox(
                child: Text(
                  "test용 샘플 계좌3",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: screenheight * 0.04,
              ),
              SizedBox(
                child: Text(
                  "test용 샘플 계좌3",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// HomeScreenFunction Extension
extension HomeScreenFunction on Ipchulgeumlist {
  // 뒤로가기 버튼을 눌렀을 때의 동작
  void onBackButtonPressed(BuildContext context) {
    Navigator.pop(context); // SignInScreen 화면으로 이동
  }

  // 쉬운 화면 버튼을 눌렀을 때의 동작
  void onEasyScreenButtonPressed(BuildContext context) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //       builder: (context) =>
    //           CancelMemberRegistrationScreen()), // SignInScreen 화면으로 이동
    // );
  }
}
