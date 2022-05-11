import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/session_card.dart';
import '../constants/constants.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/search_box.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.headline4?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: const Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: const SearchBox(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SessionCard.session(
                          sessionNum: 1,
                          isDone: true,
                          press: () {},
                        ),
                        SessionCard.session(
                          sessionNum: 2,
                          press: () {},
                        ),
                        SessionCard.session(
                          sessionNum: 3,
                          press: () {},
                        ),
                        SessionCard.session(
                          sessionNum: 4,
                          press: () {},
                        ),
                        SessionCard.session(
                          sessionNum: 5,
                          press: () {},
                        ),
                        SessionCard.session(
                          sessionNum: 6,
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Basic 2",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const Text("Start your deepen you practice")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
