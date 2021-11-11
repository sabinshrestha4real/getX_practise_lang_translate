import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/model/getxModel.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Second Screen')),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.offNamed('/', arguments: 'hi there');
                  },
                  child: Text('return value to previos screen')),
            )
          ],
        ),
      ),
    );
  }
}
