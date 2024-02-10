import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/screens/folder_screen.dart';
import 'package:notes/screens/write_note.dart';
import 'package:notes/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 10,
        title: GestureDetector(
          onTap: () {
            Get.to(() => const FolderScreen(),
                transition: Transition.leftToRightWithFade);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: AppColors().iconColors,
              ),
              Text(
                "Folders",
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Notes",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 18,
                    ),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors().textfieldColor,
                    suffixIcon: const Icon(Icons.mic)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Previous 30 Days",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ListTile(
                tileColor: AppColors().textfieldColor,
                title: const Text(
                  "Dramas",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("30/12/3020"),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(() => const WriteNoteScreen(),transition: Transition.fade);
                    },
                    icon: Icon(
                      Icons.edit_note_sharp,
                      size: 30,
                      color: AppColors().iconColors,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
