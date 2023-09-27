import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sajian_nusantara/views/Detailpage.dart';
import '../models/Food.dart';

import '../colors/AppColors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, top: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text.rich(
                TextSpan(
                  text: "Hi, User!",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text.rich(
                TextSpan(
                  text: "Eksplor Makanan Favoritmu!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SearchBox(),
              const SizedBox(
                height: 16,
              ),
              HeaderCard(),
              const SizedBox(
                height: 16,
              ),
              const Text.rich(
                TextSpan(
                  text: "Daftar Makanan",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              ListView.builder(
                itemCount: foods.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final foodItem = foods[index];
                  return FoodCard(foodItem);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell FoodCard(Food foodItem) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detailpage(foodItem: foodItem),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.textTertiaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 7,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          foodItem.fotoMakanan,
                          height: 70,
                          width: 105,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: foodItem.namaMakanan,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                    Text("Asal Daerah: ${foodItem.asalDaerah}"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell HeaderCard() {
    return InkWell(
      onTap: () => {},
      child: Stack(
        children: [
          Container(
            height: 135,
            width: 379,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                color: AppColors.secondaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text.rich(
                      TextSpan(
                        text: "Tahukah Kamu?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.accentColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "#3 Terenak di Dunia",
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: AppColors.accentColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                Image.asset(
                  "lib/assets/images/rendang_transparent.png",
                  height: 113,
                  width: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container SearchBox() {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.textTertiaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: "Cari",
          labelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textSecondaryColor,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.textSecondaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
