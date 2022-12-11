import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tasks/ui/general/colors.dart';
import 'package:tasks/ui/widgets/general_widgets.dart';
import 'package:tasks/ui/widgets/textFlied_search_widget.dart';

class HomePage extends StatelessWidget {
  CollectionReference taskReference =
      FirebaseFirestore.instance.collection("tasks");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBrandSecondaryColor,
      floatingActionButton: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(14.0),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: KBrandPrimaryColor,
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                "Agregar nueva tarea",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 12,
                    offset: const Offset(4, 4),
                  )
                ],
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bienvenido ,Ramón",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: KBrandPrimaryColor,
                      ),
                    ),
                    Text(
                      "Mis Tareas",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.w600,
                        color: KBrandPrimaryColor,
                      ),
                    ),
                    divider10(),
                    TextFieldSearchWidget(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Todas mis tareas",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: KBrandPrimaryColor.withOpacity(0.85),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 16.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            offset: const Offset(4, 4),
                            blurRadius: 12.0,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2.5,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff3E80FF),
                              borderRadius: BorderRadius.circular(6.0)),
                          child: Text(
                            "Personal",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                        divider3(),
                        Text(
                          "asdsadsadsadsaasdasdas",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: KBrandPrimaryColor.withOpacity(0.85),
                          ),
                        ),
                        Text(
                          "asdsadsadsaasdsadsadsadsaasdasdasasdsadsadsadsaasdasdasdsaasdasdasasdsadsadsadsaasdasdas",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: KBrandPrimaryColor.withOpacity(0.75),
                          ),
                        ),
                        divider6(),
                        Text(
                          "10/12/2022",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: KBrandPrimaryColor.withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      /*body: StreamBuilder(
        stream: taskReference.snapshots(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            QuerySnapshot collection = snap.data;
            List<QueryDocumentSnapshot> docs = collection.docs;
            List<Map<String, dynamic>> docsMap =
                docs.map((e) => e.data() as Map<String, dynamic>).toList();
            print(docsMap);
            return ListView.builder(
              itemCount: docsMap.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(docsMap[index]["title"]),
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),*/
    );
  }
}