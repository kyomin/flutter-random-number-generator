import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 제목과 아이콘 버튼 영역
              _Header(),
              // 숫자 영역
              _Body(),
              // 버튼 영역
              _Footer()
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '랜덤 숫자 생성기',
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w700),
        ),
        IconButton(
            color: redColor, onPressed: () {}, icon: Icon(Icons.settings))
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ]
          .map((numList) => Row(
                children: numList
                    .map((number) => Text(number.toString(),
                        style: TextStyle(color: Colors.white)))
                    .toList(),
              ))
          .toList(),
    ));
  }
}

class _Footer extends StatelessWidget {
  const _Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('생성하기!'),
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, foregroundColor: Colors.white),
    );
  }
}
