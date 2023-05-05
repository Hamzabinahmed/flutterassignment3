import 'package:flutter/material.dart';
import 'package:flutterassignment3/components/custombutton.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Location",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Los Angeles,CA",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const CustomCircleAvatar(radius: 20),
                ],
              ),
              const Text(
                "Discover Best Suitable Property",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListContainer(
                      width: 80,
                      text: "House",
                    ),
                    ListContainer(
                      width: 110,
                      text: "Apartment",
                    ),
                    ListContainer(
                      width: 80,
                      text: "Flot",
                    ),
                    ListContainer(
                      width: 80,
                      text: "Banglow",
                    ),
                  ],
                ),
              ),
              const Text(
                "Best for you",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const Cards(),
            ],
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      width: 300,
      child: Column(
        children: [
          Container(
            height: 150,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 300,
            color: const Color(0xff0E3146),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "CraftsMan",
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  "520 N Bloudry Ave Los Angeles",
                  style: TextStyle(color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.bed, color: Colors.amber),
                      Text(
                        "4Beds",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.bathtub,
                        color: Colors.amber,
                      ),
                      Text(
                        "4 Baths",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.car_rental, color: Colors.amber),
                      Text(
                        "1 Garage",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListContainer extends StatelessWidget {
  const ListContainer({super.key, required this.width, required this.text});

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffEAF1FF),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 40,
        width: width,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
