import 'package:agricos/utill/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class OgFood extends StatefulWidget {
  const OgFood({super.key});

  @override
  State<OgFood> createState() => OgFoodState();
}

class OgFoodState extends State<OgFood> {
  Future<List<Map<String, dynamic>>> fetchDataFromFirebase() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance
            .collection('Organic Food') // Replace with your collection name
            .get();

    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }

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
              //Icon(Icons.arrow_circle_left),
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
              height: 20,
            ),
            Container(
              height: 20,
              child: FutureBuilder(
                future: fetchDataFromFirebase(),
                builder: (context,
                    AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    // Display your data here
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data?[index]['Name']),

                        );
                      },
                    );
                  }
                },
              ),
            ),
          ]),
        ])),
      )
    ]));
  }
}
