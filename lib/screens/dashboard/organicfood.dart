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
  /*Future<List<Map<String, dynamic>>> fetchDataFromFirebase() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
      await FirebaseFirestore.instance
          .collection('Organic Food') // Replace with your collection name
          .get();

      return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      print('Error fetching data: $e');
      // You can throw the error or return an empty list based on your error handling strategy
      throw e;
    }
  }

   */


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
                    //  return Text('${docs.length}');
                    return ListView.builder(
                        itemCount: docs.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child:ListTile(
                              leading: const Icon(Icons.account_circle),
                              title: Text(snapshot.data!.docs[index].get('Name')),
                              //subtitle: Text('${docs[index]['BPM']} '),
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
