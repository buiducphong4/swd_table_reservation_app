import 'package:flutter/material.dart';
import 'package:table_reservation_app/constants/contant.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                width: 180,
                height: 180,
              ),
            ),
            const SizedBox(
              height: 50,
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User name',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 50,
              width: 250,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            // Rounded text button
            buildButton(false, 'Login'),
            TextButton(
              onPressed: () {},
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      color: secondaryTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  TextButton buildButton(bool status, String text) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: status ? primaryColor : secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: status ? secondaryTextColor : primaryTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
