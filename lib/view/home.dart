import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/model/getxModel.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  String any = "";
  // int counter = 0;
  @override
  Widget build(BuildContext context) {
    print('main widget');
    final _controller = Get.put(Counter());
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GetBuilder<Counter>(builder: (context) {
              print('getX widget');
              return Center(child: Text('${_controller.value}'));
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _controller.increament();
                  },
                  child: Text("Add"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _controller.reset();

                    Get.snackbar(
                      "Reset",
                      'Sucessfully Reset',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.green[400],
                    );
                  },
                  child: Text("Reset"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _controller.decreament();
                  },
                  child: Text("Sub"),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/second');
                },
                child: Text('Check Return Value')),
            Center(
                child: Text(
                    'Value from the third screen is here: ${Get.arguments ?? any}')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/third');
                },
                child: Text('Language Translation'))
          ],
        ),
      ),
    );
  }
}
