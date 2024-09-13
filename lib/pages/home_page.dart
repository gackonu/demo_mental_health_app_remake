import 'package:flutter/material.dart';
import 'package:flutter_default/cmps/exercise_card.dart';
import 'package:flutter_default/cmps/feeling_card.dart';
import 'package:flutter_default/pages/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  helloSection(),
                  const SizedBox(
                    height: 40,
                  ),
                  searchField(),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeelingCard(
                        name: 'Bad',
                        emoji: '😔',
                      ),
                      FeelingCard(
                        name: 'Okay',
                        emoji: '😊',
                      ),
                      FeelingCard(
                        name: 'Good',
                        emoji: '😄',
                      ),
                      FeelingCard(
                        name: 'Excellent',
                        emoji: '😁',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Excercises',
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
                      height: 15,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const DetailsPage();
                                }));
                              },
                              child: const ExerciseCard(
                              title: 'Speaking Skills',
                              subtitle: '5 Excercised',
                              icon: Icons.mic,
                              backgroundColor: Colors.orangeAccent,
                            )),
                            const ExerciseCard(
                              title: 'Reading Speed',
                              subtitle: '18 Excercised',
                              icon: Icons.book,
                              backgroundColor: Colors.redAccent,
                            ),
                            const ExerciseCard(
                              title: 'Dancing Ability',
                              subtitle: '12 Excercised',
                              icon: Icons.move_down,
                              backgroundColor: Colors.blueAccent,
                            ),
                            const ExerciseCard(
                              title: 'Writing Clearity',
                              subtitle: '9 Excercised',
                              icon: Icons.edit,
                              backgroundColor: Colors.amberAccent,
                            ),
                            const ExerciseCard(
                              title: 'Time Conciousness',
                              subtitle: '16 Excercised',
                              icon: Icons.hourglass_bottom_rounded,
                              backgroundColor: Colors.indigoAccent,
                            ),
                            const ExerciseCard(
                              title: 'Dieting Follow',
                              subtitle: '9 Excercised',
                              icon: Icons.food_bank,
                              backgroundColor: Colors.tealAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
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
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
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
}
