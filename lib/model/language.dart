import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'greetings': 'Hello, How are you?',
          'going': 'Where are you going?',
          'email': 'Nice to meet you @name, \n I gotta go bye @email'
        },
        'ne': {
          'greetings': 'नमस्ते, सन्चै छौ?',
          'going': 'कहाँ जादै छौ?',
          'email':
              'तपाईँलाई भेटेर खुशी लाग्यो @name जी, \n हस्त म लागेको @email'
        },

        // 'es_ES': {
        //   'hello': '¿Hola, cómo estás?',
        //   'going': '¿Adónde vas?',
        //   'email': 'Hola @name, tu correo electrónico es @email'
        // },

        // 'ru_RU':{
        //   'hello':'Привет, как дела?',
        //   'going':'Куда ты направляешься?',
        //   'email': 'Здравствуйте @name, ваш адрес электронной почты @email',
        // }

        //add more language here
      };
}
