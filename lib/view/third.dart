import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/model/getxModel.dart';

class Third extends StatefulWidget {
  Third({Key? key}) : super(key: key);

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  List<Locale> _localeData = [Locale('en'), Locale('ne')];

  @override
  Widget build(BuildContext context) {
    final controllerGet = Get.put(Counter());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('greetings'.tr)),
          Center(child: Text('going'.tr)),
          Center(
            child: Text('email'
                .trParams({'name': "success", 'email': "success@gmail.com"})),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () {
                if (controllerGet.changeCondition == true) {
                  Get.updateLocale(_localeData[1]);

                  controllerGet.changeBoolValue(false);
                } else {
                  Get.updateLocale(_localeData[0]);
                  controllerGet.changeBoolValue(true);
                }
              },
              child: Text(controllerGet.changeCondition == true
                  ? 'Change to Nepali language'
                  : 'Change to English'))
        ],
      ),
    );
  }
}
