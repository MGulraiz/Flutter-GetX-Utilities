import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Three'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),

          SizedBox(
            height: 50,

          ),

          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en', 'US'));
              }, child: Text('English')),

              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur', 'PK'));
              }, child: Text('Urdu')),

            ],
          ),

        ],
      ),
    );
  }
}
