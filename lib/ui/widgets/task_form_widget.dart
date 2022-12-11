import 'package:flutter/material.dart';
import 'package:tasks/ui/widgets/textFlied_normal_widget.dart';

import '../general/colors.dart';
import 'button_normal_widget.dart';
import 'general_widgets.dart';

class Taskformwidget extends StatefulWidget {
  const Taskformwidget({super.key});

  @override
  State<Taskformwidget> createState() => _TaskformwidgetState();
}

class _TaskformwidgetState extends State<Taskformwidget> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  showSelectDate() async {
    DateTime? datetime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2030),
        cancelText: "Cancelar",
        confirmText: "Aceptar",
        helpText: "Seleccionar Fecha",
        builder: (BuildContext context, Widget? widget) {
          return Theme(
            data: ThemeData.dark(),
            child: widget!,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22.0),
          topRight: Radius.circular(22.0),
        ),
      ),
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Agregar Tarea",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          divider6(),
          TextFieldNormalWidget(
            hintText: "Titulo",
            icon: Icons.text_fields,
          ),
          divider10(),
          TextFieldNormalWidget(
            hintText: "Description",
            icon: Icons.description,
          ),
          divider10(),
          Text("Categoria: "),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 10.0,
            children: [
              FilterChip(
                selected: true,
                backgroundColor: KBrandSecondaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                selectedColor: categoryColor["Personal"],
                checkmarkColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                label: Text("Personal"),
                onSelected: (bool value) {},
              ),
              FilterChip(
                selected: true,
                backgroundColor: KBrandSecondaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                selectedColor: categoryColor["Trabajo"],
                checkmarkColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                label: Text("Trabajo"),
                onSelected: (bool value) {},
              ),
              FilterChip(
                selected: true,
                backgroundColor: KBrandSecondaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                selectedColor: categoryColor["Otro"],
                checkmarkColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                label: Text("Otro"),
                onSelected: (bool value) {},
              ),
            ],
          ),
          divider10(),
          TextFieldNormalWidget(
            hintText: "Fecha",
            icon: Icons.date_range,
            onTap: () {
              showSelectDate();
            },
          ),
          ButtonNormalWidget(),
          divider10(),
        ],
      ),
    );
  }
}
