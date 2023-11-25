import 'package:flutter/material.dart';
import 'package:bebas/masterData.dart';
import 'package:bebas/nav.dart';

class Cart extends StatelessWidget {
  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Nav();
                        }));
                      },
                      icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.orange,),
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
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 20,
                child: Container(
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[700]),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return masterDataPage();
                      }));
                    },
                    child: Text(
                      "Add Data +",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Foto",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Nama Produk",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Harga",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Aksi",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 3,
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    _buildMyAddItemList("assets/burger.png", "Medium Burger", "Rp. 20.000,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/burger.png", "Big Burger", "Rp. 28.000,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/paket1.png", "Paket Komplit", "Rp. 55.000,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/minuman.png", "S cup Soda", "Rp. 13.500,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/minuman.png", "M Cup Soda", "Rp. 15.500,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/minuman.png", "L Cup Soda", "Rp. 16.500,00"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMyAddItemList(
      String imagePath, String productName, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, width: 75, height: 75,),
          Text(productName),
          Text(price),
          Icon(Icons.delete_outline, color: Colors.red,)
        ],
      ),
    );
  }
}