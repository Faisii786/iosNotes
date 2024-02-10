import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/screens/deleted.dart';
import 'package:notes/screens/home_screen.dart';
import 'package:notes/utils/colors.dart';

class FolderScreen extends StatelessWidget {
  const FolderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Folders",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
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
              "iCloud",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const HomeScreen(),
                    transition: Transition.rightToLeftWithFade);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: AppColors().textfieldColor,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.folder_copy_outlined,
                    color: AppColors().iconColors,
                  ),
                  title: const Text(
                    "Notes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=> const DeletPage(),transition: Transition.rightToLeftWithFade);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: AppColors().textfieldColor,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.delete_outline,
                    color: AppColors().iconColors,
                  ),
                  title: const Text(
                    "Recently Deleted",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      //Get.to(() => const WriteNoteScreen());
                    },
                    icon: Icon(
                      Icons.create_new_folder_outlined,
                      size: 30,
                      color: AppColors().iconColors,
                    )),
                IconButton(
                    onPressed: () {
                      //Get.to(() => const WriteNoteScreen());
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
