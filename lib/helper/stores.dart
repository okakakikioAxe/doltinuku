import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doltinukuversi2/pages/toko_dan_produk.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CRUD {
  //daftarkan toko
  Future regiterStore({String? nama, String? deskripsi}) async {
    try {
      //create document
      String id = FirebaseAuth.instance.currentUser!.uid;
      DocumentReference storeReference =
          FirebaseFirestore.instance.doc("stores/" + id);
      Map<String, dynamic> data = {
        "nama": nama!,
        "deskripsi": deskripsi!,
        "alamat": "jalan",
        "folower": 0,
        "product": 0,
      };
      storeReference.set(data);

      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future setStoreName(String docId) async {
    Map doc;
    final dokumen =
        await FirebaseFirestore.instance.collection('stores').doc(docId).get();
    if (dokumen.exists) {
      FirebaseFirestore.instance
          .collection("stores")
          .doc(docId)
          .get()
          .then((value) {
        doc = value.data()!;
        storeName = doc["nama"];
        folower = doc["folower"];
        product = doc["product"];
        //return value.data();
      });
    }
  }
}
