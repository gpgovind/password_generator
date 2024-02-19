import 'dart:math';

class PasswordGeneratorController {
  String generatePassword() {
    const length = 20;
    const letterLowercase = 'abcdefghijklmnopqrstuvwxyz';
    const letterUppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const numbers = '0123456789';
    const special = '!@#%^&*=+|{};:/?.>';

    String char = '';

    char += '$letterUppercase$letterLowercase$numbers$special';

    return List.generate(length, (index) {
      final indexRandom = Random.secure().nextInt(char.length);
      return char[indexRandom];
    }).join('');
  }
}
