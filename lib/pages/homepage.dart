import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class HomePage extends StatelessWidget {
  CollectionReference taskReference =
      FirebaseFirestore.instance.collection("tasks");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Nice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                taskReference.get().then((QuerySnapshot value) {
                  /*QuerySnapshot collection = value;
                  List<QueryDocumentSnapshot> docs = collection.docs;
                  QueryDocumentSnapshot doc = docs[0];
                  print(doc.id);
                  print(doc.data());*/

                  QuerySnapshot collection = value;
                  collection.docs.forEach((QueryDocumentSnapshot element) {
                    Map<String, dynamic> myMap =
                        element.data() as Map<String, dynamic>;
                    print(myMap["title"]);
                  });
                });
              },
              child: Text("Obtener Data"),
            ),
            ElevatedButton(
              onPressed: () {
                taskReference.add(
                  {
                    "title": "Ir de compras al super",
                    "description": "Debemos de comprar comidapara el mes",
                  },
                ).then((DocumentReference value) {
                  print(value.id);
                }).catchError((error) {
                  print("ocurrio un error en el registro");
                }).whenComplete(() {
                  print("El registro se ha completado");
                });
              },
              child: Text("Agregar Docmento"),
            ),
            ElevatedButton(
              onPressed: () {
                taskReference.doc("ghiLLltnerCqIrXI923a").update(
                  {
                    "title": "Ir de paseo al campo",
                  },
                ).catchError(
                  (error) {
                    print(error);
                  },
                ).whenComplete(() {
                  print("Actualizacion terminada");
                });
              },
              child: Text("Actualizar data"),
            ),
            ElevatedButton(
              onPressed: () {
                taskReference.doc("ghiLLltnerCqIrXI923a").delete().catchError(
                  (error) {
                    print(error);
                  },
                ).whenComplete(() {
                  print("La eliminacion esta completa");
                });
              },
              child: Text("Eliminar documento"),
            ),
            ElevatedButton(
              onPressed: () {
                taskReference.doc("A00002").set(
                  {
                    "title": "Ir al concierto",
                    "desciption": "Este fin de semana debemos ir al concierto",
                  },
                ).catchError(
                  (error) {
                    print(error);
                  },
                ).whenComplete(
                  () {
                    print("Creacion completada");
                  },
                );
              },
              child: Text("Agregar elemento personalizado"),
            ),
          ],
        ),
      ),
    );
  }
}
