import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foregnkeyicerentablo/Helper/DatabaseHelper.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final DatabaseHelper dbHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Database işlemleri",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Database işlemleri",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                dbHelper
                    .insertUser({"name": " sANİYE", "email": "SA@gmail.com"});
              },
              child: const Text("Ekle"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                List<Map<String, dynamic>> data = await dbHelper.getAllUsers();
                for (var element in data) {
                  log("${element["id"]} ${element["name"]}  ${element["email"]}");
                }
              },
              child: const Text("Getir"),
            )
          ],
        ),
      ),
    );
  }
}
