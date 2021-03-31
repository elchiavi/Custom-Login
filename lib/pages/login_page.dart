import 'package:flutter/material.dart';

import 'package:chatapp/widgets/custom_all_widgets.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                CustomIcon(title: 'Mensajeando'),
                _Form(),
                CustomLabel(route: 'register', question: '¿No tienes cuenta?', text: 'Crea una ahora'),  
                Text('Terminos y condiciones de uso', style: TextStyle( fontWeight: FontWeight.w200),)

              ],
            ),
          ),
        ),
      ),
   );
  }
}



class _Form extends StatefulWidget {

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {

    final emailCtrol = TextEditingController();
    final passCtrol = TextEditingController();

    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal:50),
       child: Column(
         children: <Widget> [

              CustomInput(icon: Icons.mail_outline, placeholder: 'Email', keyboardType: TextInputType.emailAddress, textController: emailCtrol),
              CustomInput(icon: Icons.lock_outline, placeholder: 'Contraseña', textController: passCtrol, isPassword: true),
              
              CustomButton(text: 'Ingresar', 
                onPressed: () {
                  print(emailCtrol.text);
                  print(passCtrol.text);
                },
              )
              
         ],
        ),
    );
  }
}

