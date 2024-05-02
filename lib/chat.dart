import 'package:fastfood6/main.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chat extends StatelessWidget {
  String name;
  String imageAdders;
  Chat(this.name, this.imageAdders, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MainBody()));
              },
              icon: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/back.png"),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "  Chat",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Person(imageAdders, name),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Just to order",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 136, 199, 152)),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Okay, for what level of spiciness?",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Okay, wait a minute 👍",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 136, 199, 152)),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Okay I'm waiting  👍",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
            Flexible(child: Container()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 224, 226, 225)),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Okay I'm waiting  👍",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.green[400],
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Person extends StatelessWidget {
  String image_adress;
  String name;
  Person(
    this.image_adress,
    this.name,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        height: 87,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: 2, color: Colors.grey.shade300)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 70, width: 70, child: Image.asset("assets/images/$image_adress")),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 41, 237, 155)),
                    child: const Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 10, 141, 86),
                    )))
          ],
        ),
      ),
    );
  }
}