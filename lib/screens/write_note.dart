import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/screens/home_screen.dart';
import 'package:notes/utils/colors.dart';

class WriteNoteScreen extends StatelessWidget {
  const WriteNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 10,
        title: GestureDetector(
          onTap: () {
            Get.to(() => const HomeScreen(),
                transition: Transition.leftToRightWithFade);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: AppColors().iconColors,
              ),
              Text(
                "Notes",
                style: TextStyle(color: AppColors().iconColors, fontSize: 18),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors().iconColors, width: 2),
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: AppColors().iconColors,
                  size: 17,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: AppColors().bkgrndColor,
                  contentPadding: const EdgeInsets.all(0),
                ),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                maxLines: 1000,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: AppColors().bkgrndColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
