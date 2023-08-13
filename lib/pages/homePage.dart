import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app_ui/utlis/doctorCard.dart';
import 'package:medical_app_ui/utlis/iconCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffcfeff),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Arman Tanvir.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xff8a86e2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: _height * 0.04),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffffe0f4),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: SizedBox(
                        height: _height * 0.28,
                        width: _width * 0.29,
                        child: Lottie.asset(
                          'assets/lottie/lottie-1.json',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How do you feel?",
                          style: TextStyle(
                            fontSize: _height * 0.025,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Fill out your medical\ncard right now",
                          style: TextStyle(
                            fontSize: _height * 0.015,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: _height * 0.02),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: _width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xff8a86e2),
                            ),
                            child: const Center(
                              child: Text(
                                'Get Started!',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    IconCard(
                        title: 'Dentist', imagePath: 'assets/icons/tooth.png'),
                    SizedBox(width: 15),
                    IconCard(
                        title: 'Sergeon', imagePath: 'assets/icons/knife.png'),
                    SizedBox(width: 15),
                    IconCard(
                        title: 'Kindeys',
                        imagePath: 'assets/icons/kidneys.png'),
                    SizedBox(width: 15),
                    IconCard(
                        title: 'Dentist', imagePath: 'assets/icons/tooth.png'),
                    SizedBox(width: 15),
                    IconCard(
                        title: 'Sergeon', imagePath: 'assets/icons/knife.png'),
                    SizedBox(width: 15),
                    IconCard(
                        title: 'Kindeys',
                        imagePath: 'assets/icons/kidneys.png'),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Doctor's List",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 195,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorCard(
                        doctorName: 'Dr. Arlene McCoy',
                        title: 'Therapist',
                        imagePath: 'assets/icons/img-1.jpg',
                        rating: 4.9,
                        experienceYear: 7),
                    DoctorCard(
                        doctorName: 'Dr. Albert Flores',
                        title: 'Surgeon',
                        imagePath: 'assets/icons/img-2.jpg',
                        rating: 4.8,
                        experienceYear: 5),
                    DoctorCard(
                        doctorName: 'Dr. Arman Tanvir',
                        title: 'Programmer',
                        imagePath: 'assets/icons/img-3.jpg',
                        rating: 4.9,
                        experienceYear: 7),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
