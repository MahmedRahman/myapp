import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categoryData = [
    "Headphone",
    "Headband",
    "Earpads",
    "Headphone",
    "Headband",
    "Earpads",
  ];

  bool IsSelect = true;

  var selectIndex = 99;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              categoryData.length,
              (index) => selectItem(
                title: categoryData.elementAt(index),
                isSelect: selectIndex == index,
                onTap: () {
                  selectIndex = index;
                  setState(
                    () {
                      if (IsSelect == true) {
                        IsSelect = false;
                      } else {
                        IsSelect = true;
                      }
                    },
                  );
                  print(index);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget selectItem({required String title, required bool isSelect, required void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: isSelect ? Color(0xff0ACF83) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Text(
            "$title",
            style: TextStyle(
              color: isSelect ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    ),
  );
}
