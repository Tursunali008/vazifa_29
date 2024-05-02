import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                "Find Your\nFavorite Food",
                style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: 1, color: Colors.grey.shade300)], borderRadius: BorderRadius.circular(10)),
                  height: 45,
                  width: 45,
                  child: Image.asset("assets/images/notic.png"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(children: <Widget>[
            Flexible(
              flex: 25,
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 250, 225, 197)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.search, color: Color(0xffDA6317)),
                    Text(
                      "What do you want to order?",
                      style: TextStyle(color: Color(0xffDA6317)),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(),
              flex: 1,
            ),
            Flexible(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 250, 225, 197)),
                child: Image.asset("assets/images/filter.png"),
              ),
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          Container(
            // padding: const EdgeInsets.all(1),
            height: 44,
            width: 95,
            decoration: BoxDecoration(color: Color.fromARGB(255, 250, 225, 197), borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  " Soup",
                  style: TextStyle(color: Color(0xffDA6317)),
                ),
                IconButton(
                    splashRadius: 1,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Color(0xffDA6317),
                      size: 20,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Popular Menu",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Food("image1.png", "Herbal Pancake", "Warung Herbal", "7"),
                  const SizedBox(
                    height: 20,
                  ),
                  Food("image2.png", "Herbal Pancake", "Warung Herbal", "7"),
                  const SizedBox(
                    height: 20,
                  ),
                  Food("image3.png", "Herbal Pancake", "Warung Herbal", "7"),
                  const SizedBox(
                    height: 20,
                  ),
                  Food("image1.png", "Herbal Pancake", "Warung Herbal", "7"),
                  const SizedBox(
                    height: 20,
                  ),
                  Food("image2.png", "Herbal Pancake", "Warung Herbal", "7"),
                  const SizedBox(
                    height: 20,
                  ),
                  Food("image3.png", "Herbal Pancake", "Warung Herbal", "7"),
                  const SizedBox(
                    height: 20,
                  ),
                  Food("image1.png", "Herbal Pancake", "Warung Herbal", "7"),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Food extends StatelessWidget {
  String image_adress;
  String food_name;
  String cooker;
  String price;
  Food(this.image_adress, this.food_name, this.cooker, this.price);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        height: 87,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: 5, color: Colors.grey.shade300)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/$image_adress"),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      food_name,
                      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    Text(
                      cooker,
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "\$$price",
              style: const TextStyle(color: Color(0xffFEAD1D), fontSize: 22, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}