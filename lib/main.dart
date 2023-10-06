import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('ClampingScrollPhysics'),
              NotificationListener(
                onNotification: (notification) {
                  print(notification);
                  return true;
                },
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  child: Row(
                    children: List.generate(
                      10,
                      (index) => Container(
                        height: 100,
                        width: 200,
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text('BouncingScrollPhysics'),
              NotificationListener(
                onNotification: (notification) {
                  print(notification);
                  return true;
                },
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: List.generate(
                      10,
                      (index) => Container(
                        height: 100,
                        width: 200,
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
