import 'package:agricos/utill/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class OgFood extends StatefulWidget {
  const OgFood({super.key});

  @override
  State<OgFood> createState() => OgFoodState();
}

class OgFoodState extends State<OgFood> {
  final _userStream =
  FirebaseFirestore.instance.collection("Organic Food").snapshots();


  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
      Expanded(
        child: SingleChildScrollView(
            child: Column(children: [
          Image.asset(
            "assest/Images/1.jpeg",
            height: 150,
          ),
          Column(children: [
            Row(children: [
              //width: 20,
              ElevatedButton.icon(
                icon: Icon(
                  Icons.arrow_circle_left,
                  color: Color(0xFF04FF2F),
                  size: 30.0,
                ),
                label: Text(""),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.insidedashboard);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFFFFF)),
              ),
              SizedBox(
                width: 50,
              ),

              Image.asset(
                "assest/Images/logo.jpeg",
                height: 150,
                width: 150,

                //width: 354,
              ),
            ]),
            SizedBox(
              height: 300,
            ),
            Container(
              height: 20,
              child: StreamBuilder(
                  stream: _userStream,
                  builder:
                      (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Connection Errors');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Text('Loading...');
                    }

                    var docs = snapshot.data!.docs;

                    return ListView.builder(
                        itemCount: docs.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child:ListTile(
                              leading: const Icon(Icons.account_circle),
                              title: Text(snapshot.data!.docs[index].get('Name')),

                            ),
                          );
                        });
                  })
            ),
          ]),
        ])),
      )
    ]));
  }
}
