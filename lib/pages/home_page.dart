import 'dart:math';

import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  double height = 150;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 21, 23, 37),
        centerTitle: true,
        backgroundColor: const Color(0xff24263B),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    height: 180,
                    width: 155,
                    decoration: BoxDecoration(
                        color: isMale
                            ? const Color.fromARGB(255, 66, 65, 90)
                            : const Color(0xff333244),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/male.png',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Male',
                          style:
                              TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    height: 180,
                    width: 155,
                    decoration: BoxDecoration(
                        color: isMale
                            ? const Color(0xff333244)
                            : const Color.fromARGB(255, 66, 65, 90),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/female.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Female',
                          style:
                              TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
            child: Container(
              width: double.infinity,
              height: 189,
              decoration: const BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(fontSize: 20, color: Color(0xff8B8C9E)),
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        '${height.round()}',
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Slider(
                    thumbColor: const Color.fromARGB(255, 205, 43, 83),
                    activeColor: const Color(0xffE83D67),
                    max: 220,
                    min: 80,
                    value: height,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: Color(0xff333244),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  width: 155,
                  height: 180,
                  child: Column(
                    children: [
                      const Text(
                        'Weight',
                        style:
                            TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
                      ),
                      Text(
                        '$weight',
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton(
                            heroTag: 'weight-',
                            mini: true,
                            shape: const CircleBorder(),
                            backgroundColor: const Color(0xff8B8C9E),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          FloatingActionButton(
                            heroTag: 'weight+',
                            mini: true,
                            shape: const CircleBorder(),
                            backgroundColor: const Color(0xff8B8C9E),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: Color(0xff333244),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  width: 155,
                  height: 180,
                  child: Column(
                    children: [
                      const Text(
                        'Age',
                        style:
                            TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
                      ),
                      Text(
                        '$age',
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton(
                            heroTag: 'age-',
                            mini: true,
                            shape: const CircleBorder(),
                            backgroundColor: const Color(0xff8B8C9E),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          FloatingActionButton(
                            heroTag: 'age+',
                            mini: true,
                            shape: const CircleBorder(),
                            backgroundColor: const Color(0xff8B8C9E),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  var result = weight / pow(height / 100, 2);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResultPage(
                          gender: isMale, age: age, result: result.round())));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffE83D67),
                  ),
                  width: double.infinity,
                  height: 80,
                  child: const Center(
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
