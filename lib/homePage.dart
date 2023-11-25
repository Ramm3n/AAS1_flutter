import 'package:bebas/item_widget.dart';
import 'package:flutter/material.dart';

class HomePg extends StatelessWidget {
  const HomePg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 15,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      splashRadius: 20),
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 15,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person_2_outlined),
                      splashRadius: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Widget_buildmyitemlist("assets/paket1.png", "All"),
              Widget_buildmyitemlist("assets/burger.png", "Makanan"),
              Widget_buildmyitemlist("assets/minuman.png", "Minuman"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 5, right: 250),
            child: Text(
              "All Menu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Padding(padding: const EdgeInsets.all(3.0),
              child: MyItem(),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Widget_buildmyitemlist(String imagePath, String label) {
    return Column(
      children: [
        Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                imagePath,
                width: 75,
                height: 75,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
