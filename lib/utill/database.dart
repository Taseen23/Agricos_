import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMetgods
{
  Future addUserDetails(Map<String, dynamic> userinfoMap)async{
    return await FirebaseFirestore.instance
        .collection("Users")
        .doc()
        .set(userinfoMap);
  }
  Future<QuerySnapshot> getthisUserInfo(String name)async{
    return await FirebaseFirestore.instance
        .collection("Users")
        .where("Crop Type", isEqualTo: name)
        .get();
  }
}