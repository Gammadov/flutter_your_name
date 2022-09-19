import 'package:flutter/material.dart';
import 'package:flutter_your_name/screens/les107_bloc_practise/fetch_data/fetch_user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_your_name/screens/les107_bloc_practise/fetch_data/styles.dart';

class RandomUserScreen extends StatelessWidget {
  const RandomUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyle.background,
        body: Center(
          child: FutureBuilder<Map<String, String>>(
              future: RandomUser.getData(),
              initialData: const{
                'name': 'Ginger Meow',
                'email': 'playful.paws@scratch.com',
                'phone': 'mu-rr-mu-rr-mu',
                'picture': 'https://emojipedia-us.s3.amazonaws.com/source/microsoft-teams/337/cat-face_1f431.png',
              },
              builder: (context, AsyncSnapshot<Map<String, String>> snapshot) {
                return Container(
                  width: 300,
                  decoration: AppStyle.decoration(),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network(snapshot.data!['picture']!),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(snapshot.data!['name']!,
                              style: const TextStyle(
                                  fontSize: 20, color: AppStyle.blackText)),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Divider(thickness: 0.5, color: AppStyle.shadow),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              width: 25,
                              child: const Icon(Icons.phone,
                                  size: 15, color: AppStyle.shadow)),
                          Text(snapshot.data!['phone']!,
                              style: const TextStyle(
                                  fontSize: 15, color: AppStyle.blackText)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              width: 25,
                              child: const Icon(Icons.mail,
                                  size: 15, color: AppStyle.shadow)),
                          Text(snapshot.data!['email']!,
                              overflow: TextOverflow.clip,
                              style: const TextStyle(
                                  fontSize: 15, color: AppStyle.blackText)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: MaterialButton(
                            color: AppStyle.blueGray,
                            onPressed: () {},
                            child: const Text('update',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: AppStyle.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
