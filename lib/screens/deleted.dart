import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/screens/folder_screen.dart';
import 'package:notes/screens/write_note.dart';
import 'package:notes/utils/colors.dart';

class DeletPage extends StatelessWidget {
  const DeletPage({super.key});

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
              child: Text(
                "Edit",
                style: TextStyle(
                    color: AppColors().iconColors, fontWeight: FontWeight.w700),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recently Deleted",
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
                "Notes are available here for 30 days. After that time, notes will be permanently deleted. This may take up to 40 days."),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(() => const WriteNoteScreen());
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
