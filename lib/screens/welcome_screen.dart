import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      upperBound: 100,
    );

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                Hero(
                  tag: 'Bolt',
                  child: Icon(
                    Icons.bolt,
                    size: (controller.value / 100) * 60,
                    color: Colors.amber,
                  ),
                ),
                const Text(
                  'Flash Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    //fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            //log in button
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              style: TextButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.lightBlue[400],
              ),
              child: const Text('Log in'),
            ),
            //register button
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              style: TextButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.lightBlue[400],
              ),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
