import 'package:cloud_firestore/cloud_firestore.dart';

class Database{
  Future addUserInfo(String id, Map<String,dynamic> infoMaps) async{
    return await FirebaseFirestore.instance.collection("users").doc(id).set(infoMaps);
  }
  Future<QuerySnapshot> getUserInfo(String email) async{
    return await FirebaseFirestore.instance.collection("users").where("email" , isEqualTo: email).get();
  }
}