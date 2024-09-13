import 'package:flutter/material.dart';
import 'package:flutter_default/cmps/consultant_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            child: Column(children: [
              helloSection(),
              const SizedBox(
                height: 40,
              ),
              searchField(),
              const SizedBox(
                height: 40,
              ),
            ]),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w300),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 170,
                              height: 100,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    Color.fromARGB(255, 9, 54, 131),
                                    Colors.blue
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    // color:const Color(0xff101617).withOpacity(0.11),
                                    // blurRadius: 40,
                                    // spreadRadius: 10,
                                  ),
                                ],
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Relationship',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              width: 170,
                              height: 100,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    Color.fromARGB(255, 230, 138, 33),
                                    Color.fromARGB(255, 243, 74, 33)
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    // color:const Color(0xff101617).withOpacity(0.11),
                                    // blurRadius: 40,
                                    // spreadRadius: 10,
                                  ),
                                ],
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Career',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 170,
                              height: 100,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    Color.fromARGB(255, 9, 131, 129),
                                    Color.fromARGB(255, 9, 143, 156)
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    // color:const Color(0xff101617).withOpacity(0.11),
                                    // blurRadius: 100,
                                    // spreadRadius: 10,
                                  ),
                                ],
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Education',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              width: 170,
                              height: 100,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    Color.fromARGB(255, 174, 33, 230),
                                    Color.fromARGB(255, 174, 83, 230)
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    // color:const Color(0xff101617).withOpacity(0.11),
                                    // blurRadius: 40,
                                    // spreadRadius: 10,
                                  ),
                                ],
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(30)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Other',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Consultant',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const ConsultantCard(
                            image: 'assets/images/1.jpg',
                            name: 'Mark Brown',
                            skill: 'Teaching'),
                        const ConsultantCard(
                            image: 'assets/images/2.jpg',
                            name: 'Mark Brown',
                            skill: 'Teaching'),
                        const ConsultantCard(
                            image: 'assets/images/3.jpg',
                            name: 'Mark Brown',
                            skill: 'Teaching'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

SizedBox searchField() {
  return SizedBox(
      width: double.infinity,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: Colors.white,
            fillColor: Colors.blue[600],
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.white24),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            )),
      ));
}

Row helloSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hello, Goodness!',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '11th May 2025',
            style: TextStyle(color: Colors.blue[100]),
          )
        ],
      ),
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
        child: const Icon(
          Icons.notifications,
          size: 20,
          color: Colors.white,
        ),
      )
    ],
  );
}
