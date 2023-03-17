import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxutils/screen_one.dart';
import 'package:getxutils/screen_three.dart';
import 'package:getxutils/screen_two.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Tutorial'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              title: Text('Screen One'),
              subtitle: Text('Dialog alert, Bottom Sheet & Snackbar'),
              onTap: () {
                // Navigator.pop(context);    // traditional method
                Get.to(ScreenOne());
              },

            ),
          ),
          Card(
            child: ListTile(
              title: Text('Screen Two'),
              subtitle: Text('Media Query Responsiveness'),
              onTap: () {
                // Navigator.pop(context);    // traditional method
                Get.to(ScreenTwo());
              },

            ),
          ),
          Card(
            child: ListTile(
              title: Text('Screen Three'),
              subtitle: Text('Internationalization: Multiple Languages'),
              onTap: () {
                // Navigator.pop(context);    // traditional method
                Get.to(ScreenThree());
              },

            ),
          ),


          // ListTile(
          //   title: Text('message'.tr),
          //   subtitle: Text('name'.tr),
          // ),
          // SizedBox(
          //   height: 50,
          //
          // ),
          // Row(
          //   children: [
          //     OutlinedButton(onPressed: (){
          //       Get.updateLocale(Locale('en', 'US'));
          //     }, child: Text('English')),
          //
          //     OutlinedButton(onPressed: (){
          //       Get.updateLocale(Locale('ur', 'PK'));
          //     }, child: Text('Urdu')),
          //
          //   ],
          // ),


        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Get.snackbar(
      //       'SoTeach',
      //       'Learn with so teach',
      //       icon: Icon(Icons.add),
      //       backgroundColor: Colors.blue ,
      //     snackPosition: SnackPosition.BOTTOM,
      //
      //   );
      // },),
    );
  }
}
