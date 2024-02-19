import 'package:flutter/material.dart';
import 'package:password_generator/controller/generator_controller.dart';
import 'package:password_generator/widgets/custom_button.dart';
import 'package:password_generator/widgets/textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300.withOpacity(0.3),
      appBar: AppBar(
        title: const Text('Password Generator',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
                controller: textEditingController, text: 'Generate password'),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onTap: () {
                final value = PasswordGeneratorController().generatePassword();
                textEditingController.text = value;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
