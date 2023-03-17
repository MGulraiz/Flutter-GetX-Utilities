import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height*.8,
            height: Get.height*.3,
            width: Get.width*.8,
            color: Colors.yellow,
            child: Center(
              child: Text("Top"),
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height*.8,
            height: Get.height*.3,
            width: Get.width*.8,
            color: Colors.green,
            child: Center(
              child: Text("Center"),
            ),
          ),
          Center(
              child: TextButton(
                  onPressed: () {
                    // Navigator.pop(context);    // traditional method
                    Get.back();
                    Get.back();
                  },
                  child: Text('Go back to home screen'))),
          // Card(
          //   child: ListTile(
          //     title: Text('GetX Dialog Alert'),
          //     subtitle: Text('GetX Dialog alert with subtitle'),
          //     onTap: () {
          //       Get.defaultDialog(
          //         title: 'Delete Chat',
          //         middleText: 'Are you sure you want to delete this chat?',
          //         contentPadding: EdgeInsets.all(20),
          //         titlePadding: EdgeInsets.only(top: 20),
          //         confirm: TextButton(onPressed: (){
          //           //Navigator.pop(context);
          //           Get.back();
          //         }, child: Text('Ok')),
          //         cancel: TextButton(onPressed: (){}, child: Text('Cancel')),
          //
          //         // textConfirm: 'Yes',
          //         // textCancel: 'No',
          //
          //       );
          //
          //     },
          //
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     title: Text('GetX Bottom Sheet'),
          //     subtitle: Text('GetX Dialog alert with subtitle'),
          //     onTap: () {
          //       Get.bottomSheet(Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           color: Colors.blue,
          //
          //         ),
          //         child: Column(
          //           children: [
          //             ListTile(
          //               leading: Icon(Icons.light_mode),
          //               title: Text('Light Theme'),
          //               onTap: (){
          //                 Get.changeTheme(ThemeData.light());
          //               },
          //             ),
          //             ListTile(
          //               leading: Icon(Icons.dark_mode),
          //               title: Text('Dark Theme'),
          //               onTap: (){
          //                 Get.changeTheme(ThemeData.dark());
          //
          //
          //               },
          //             ),
          //
          //           ],
          //         ),
          //
          //       )
          //       );
          //
          //     },
          //
          //   ),
          // ),

        ],
      ),
    );
  }

}

