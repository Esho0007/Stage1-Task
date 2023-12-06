import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 38),
              child: Text(
                "Nsexpress BootCamp11",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "ASS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            const Spacer(),
            Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.grey.shade50),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(3, 3),
                          blurRadius: 10,
                          spreadRadius: 1,
                          color: Colors.grey),
                      BoxShadow(
                          offset: Offset(-3, -3),
                          blurRadius: 10,
                          spreadRadius: 1,
                          color: Colors.white),
                    ]),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'/SignInScreen');
                    },
                    icon: const Icon(
                      Icons.question_mark_sharp,
                      size: 56,
                    ))),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
