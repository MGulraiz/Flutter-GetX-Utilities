import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxutils/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('GetX Dialog Alert'),
              subtitle: Text('GetX Dialog alert with subtitle'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete Chat',
                  middleText: 'Are you sure you want to delete this chat?',
                  contentPadding: EdgeInsets.all(20),
                  titlePadding: EdgeInsets.only(top: 20),
                  confirm: TextButton(onPressed: (){
                    //Navigator.pop(context);
                    Get.back();
                  }, child: Text('Ok')),
                  cancel: TextButton(onPressed: (){}, child: Text('Cancel')),

                  // textConfirm: 'Yes',
                  // textCancel: 'No',

                );

              },

            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX Bottom Sheet'),
              subtitle: Text('GetX Dialog alert with subtitle'),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,

                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text('Light Theme'),
                        onTap: (){
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark Theme'),
                        onTap: (){
                          Get.changeTheme(ThemeData.dark());


                        },
                      ),

                    ],
                  ),

                )
                );

              },

            ),
          ),
          TextButton(
              onPressed: () {
                // Navigator.pop(context);    // traditional method
                Get.to(ScreenTwo());
              },
              child: Text('Go to screen 2')),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar(
          'Flutter App',
          'Learn Flutter with GetX',
          icon: Icon(Icons.add),
          backgroundColor: Colors.blue ,
          snackPosition: SnackPosition.BOTTOM,

        );
      },),
    );
  }

}

