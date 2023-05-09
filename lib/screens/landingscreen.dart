import 'package:flutter/material.dart';
import 'package:flutterassignment3/components/custombutton.dart';
import 'package:flutterassignment3/screens/lastscreen.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              const SizedBox(
                width: 200,
                child: Text(
                  "Discover Best Suitable Property",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
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
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Cards(
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LastScreen(),
                          ),
                        );
                      },
                    ),
                    Cards(
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LastScreen(),
                          ),
                        );
                      },
                    ),
                    Cards(
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LastScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const Text(
                "Nearby your location",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              lastCard(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget lastCard() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffEAF1FF),
    ),
    height: 100,
    width: 320,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/icons/loung1.jpg"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Ranch Home"),
              const Text("520 N Btoudry Ave LosAngeles"),
              Row(
                children: const [
                  Icon(Icons.bed, color: Colors.amber, size: 15),
                  Text(
                    "4Beds",
                    style: TextStyle(fontSize: 10),
                  ),
                  Icon(
                    Icons.bathtub,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Text(
                    "4 Baths",
                    style: TextStyle(fontSize: 10),
                  ),
                  Icon(Icons.car_rental, color: Colors.amber, size: 15),
                  Text(
                    "1 Garage",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

class Cards extends StatelessWidget {
  const Cards({super.key, required this.ontap});
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: GestureDetector(
        onTap: ontap,
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icons/home1.jpg"),
                      fit: BoxFit.fill),
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                height: 150,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xff0E3146),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                height: 100,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "CraftsMan",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      const Text(
                        "520 N Bloudry Ave Los Angeles",
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(),
                        child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListContainer extends StatelessWidget {
  const ListContainer({
    super.key,
    required this.width,
    required this.text,
  });

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
