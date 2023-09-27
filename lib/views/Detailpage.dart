import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/Food.dart';

class Detailpage extends StatefulWidget {
  final Food foodItem;

  const Detailpage({super.key, required this.foodItem});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    final Food foodItem = widget.foodItem;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  foodItem.fotoMakanan,
                  height: 290,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text.rich(TextSpan(text: "Nama Makanan")),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                          text: foodItem.namaMakanan,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                      RatingBar.builder(
                        itemSize: 20,
                        initialRating: foodItem.rating,
                        itemCount: 5,
                        itemBuilder: (context, int index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text.rich(TextSpan(text: "Asal Daerah")),
                  const SizedBox(
                    height: 8,
                  ),
                  Text.rich(TextSpan(
                      text: foodItem.asalDaerah,
                      style: const TextStyle(
                          fontSize: 16, fontStyle: FontStyle.italic))),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text.rich(TextSpan(text: "Deskripsi")),
                  const SizedBox(
                    height: 8,
                  ),
                  Text.rich(TextSpan(
                      text: foodItem.deskripsi,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
