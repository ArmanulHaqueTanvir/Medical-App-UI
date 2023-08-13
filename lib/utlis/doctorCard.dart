import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorName, title, imagePath;
  final double rating, experienceYear;
  const DoctorCard(
      {super.key,
      required this.doctorName,
      required this.title,
      required this.imagePath,
      required this.rating,
      required this.experienceYear});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Expanded(
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          // height: 100,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade50,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(70)),
                  child: Image.asset(
                    height: 50,
                    imagePath,
                  ),
                ),
                Positioned(
                  top: 10,
                  child: Container(
                    width: 50,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 15,
                        ),
                        Text(
                          rating.toString(),
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  doctorName,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  "$title , $experienceYear y.e.",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
