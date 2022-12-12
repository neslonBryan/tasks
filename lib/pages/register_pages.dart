import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ui/general/colors.dart';
import '../ui/widgets/button_custom_widget.dart';
import '../ui/widgets/general_widgets.dart';
import '../ui/widgets/textFlied_normal_widget.dart';
import '../ui/widgets/textfield_password_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _fullNamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              divider40(),
              SvgPicture.asset(
                'assets/images/register.svg',
                height: 180.0,
              ),
              divider30(),
              Text(
                "Registrate",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: KBrandPrimaryColor,
                ),
              ),
              divider10(),
              TextFieldNormalWidget(
                hintText: "Nombre Completo",
                icon: Icons.email,
                controller: _fullNamecontroller,
              ),
              divider10(),
              TextFieldNormalWidget(
                hintText: "Correo electrónico",
                icon: Icons.email,
                controller: _emailcontroller,
              ),
              divider6(),
              TextFieldPasswordWidget(
                controller: _passwordcontroller,
              ),
              divider20(),
              ButtonCustonWidget(
                text: "Registrate",
                icon: "check",
                color: KBrandPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
