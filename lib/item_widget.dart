import 'package:flutter/material.dart';

class MyItem extends StatelessWidget{
  const MyItem ({Key? key}) : super(key: key);

  Widget buildItem (String imagePath, String title, String subTitle){
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      width: 150,
      height: 155,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset(imagePath),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(subTitle),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  width: 19,
                  height: 20,
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildItem("assets/burger.png", "Medium Burger", "Rp. 20.000,00"),
              Padding(padding: EdgeInsets.all(5)),
              buildItem("assets/minuman.png", "S cup Soda", "Rp. 13.500,00"),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildItem("assets/burger.png", "Big Burger", "Rp. 28.000,00"),
              Padding(padding: EdgeInsets.all(5)),
              buildItem("assets/minuman.png", "M cup Soda", "Rp. 15.500,00"),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildItem("assets/paket1.png", "Paket Komplit", "Rp. 55.000,00"),
            Padding(padding: EdgeInsets.all(5)),
            buildItem("assets/minuman.png", "L cup Soda", "Rp. 16.500,00"),
          ],
        ),
      ],
    );
  }
}