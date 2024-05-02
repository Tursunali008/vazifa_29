import 'package:fastfood6/chat.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Fourthpage extends StatelessWidget {
  Function(int) backpage;
  Fourthpage(this.backpage, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 60,
            width: 60,
            child: IconButton(
              onPressed: () {
                backpage(0);
              },
              icon: Image.asset("assets/images/back.png"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            " Chat",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Persons(),
        ],
      ),
    );
  }
}

class Persons extends StatelessWidget {
  const Persons({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Person("men.png", "Ali", "Your Order Just Arrived!", "20:00"),
          const SizedBox(
            height: 10,
          ),
          Person("women.png", "Malika", "Your Order Just Arrived!", "20:00"),
          const SizedBox(
            height: 10,
          ),
          Person("men2.png", "John", "Your Order Just Arrived!", "20:00"),
          const SizedBox(
            height: 10,
          ),
          Person("men.png", "Vali", "Your Order Just Arrived!", "20:00"),
          const SizedBox(
            height: 10,
          ),
          Person("women.png", "Ali", "Your Order Just Arrived!", "20:00"),
          const SizedBox(
            height: 10,
          ),
          Person("men.png", "Ali", "Your Order Just Arrived!", "20:00"),
        ],
      ),
    ));
  }
}

// ignore: must_be_immutable
class Person extends StatelessWidget {
  String image_adress;
  String name;
  String title;
  String time;
  Person(this.image_adress, this.name, this.title, this.time, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Chat(name, image_adress)));
        },
        icon: Container(
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
                        title,
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                time,
                style: const TextStyle(
                  color: Color.fromARGB(255, 162, 162, 161),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}