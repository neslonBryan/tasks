import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasks/ui/general/colors.dart';
import 'package:tasks/ui/widgets/button_custom_widget.dart';
import 'package:tasks/ui/widgets/button_normal_widget.dart';
import 'package:tasks/ui/widgets/general_widgets.dart';
import 'package:tasks/ui/widgets/textFlied_normal_widget.dart';
import 'package:tasks/ui/widgets/textfield_password_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
          child: Column(
            children: [
              divider40(),
              SvgPicture.asset(
                'assets/images/login.svg',
                height: 180.0,
              ),
              divider30(),
              Text(
                "Iniciar Sesión",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: KBrandPrimaryColor,
                ),
              ),
              divider10(),
              TextFieldNormalWidget(
                hintText: "Correo electrónico",
                icon: Icons.email,
                controller: _emailcontroller,
              ),
              divider20(),
              TextFieldPasswordWidget(
                controller: _passwordcontroller,
              ),
              divider20(),
              ButtonCustonWidget(
                text: "Iniciar Sesión",
                icon: "check",
                color: KBrandPrimaryColor,
              ),
              divider20(),
              Text(
                "O ingresa con tus redes sociales",
              ),
              divider20(),
              ButtonCustonWidget(
                text: "Iniciar sesión con Google",
                icon: "google",
                color: Color(0xfff84b2a),
              ),
              divider20(),
              ButtonCustonWidget(
                text: "Iniciar sesión con Facebook",
                icon: "facebook",
                color: Color(0xff507CC0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
