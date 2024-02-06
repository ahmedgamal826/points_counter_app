import 'package:flutter/material.dart';

import 'custom_elvated_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count1 = 0;
  int count2 = 0;
  int teamNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Points Counter',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Team ${teamNumber}',
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$count1',
                    style: const TextStyle(
                        fontSize: 120, fontWeight: FontWeight.bold),
                  ),
                  CustomElvatedButton(
                    onpressed: () {
                      setState(() {
                        count1 += 2;
                      });
                    },
                    txt: 'Add 2 points',
                  ),
                  CustomElvatedButton(
                    onpressed: () {
                      setState(() {
                        count1 += 4;
                      });
                    },
                    txt: 'Add 4 points',
                  ),
                  CustomElvatedButton(
                      txt: 'Add 6 points',
                      onpressed: () {
                        setState(() {
                          count1 += 6;
                        });
                      })
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Team B',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$count2',
                    style: const TextStyle(
                        fontSize: 120, fontWeight: FontWeight.bold),
                  ),
                  CustomElvatedButton(
                      txt: 'add 2 points',
                      onpressed: () {
                        setState(() {
                          count2 += 2;
                        });
                      }),
                  CustomElvatedButton(
                      txt: 'add 4 points',
                      onpressed: () {
                        setState(() {
                          count2 += 4;
                        });
                      }),
                  CustomElvatedButton(
                      txt: 'add 6 points',
                      onpressed: () {
                        setState(() {
                          count2 += 6;
                        });
                      }),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CustomElvatedButton(
              txt: 'Reset',
              onpressed: () {
                setState(() {
                  count1 = 0;
                  count2 = 0;
                });
              })
        ],
      ),
    );
  }
}
