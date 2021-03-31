import 'package:flutter/material.dart';

import 'package:chatapp/widgets/custom_all_widgets.dart';

class RegisterPage extends StatelessWidget {  

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
                CustomIcon(title:'Registrate'),
                _Form(),
                CustomLabel(route: 'login', question: '¿Ya tienes una cuenta?', text: 'Ingresa ahora',),  
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
    final nameCtrol = TextEditingController();

    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal:50),
       child: Column(
         children: <Widget> [

              CustomInput(icon: Icons.perm_identity, placeholder: 'Nombre', keyboardType: TextInputType.text, textController: nameCtrol),
              CustomInput(icon: Icons.mail_outline, placeholder: 'Email', keyboardType: TextInputType.emailAddress, textController: emailCtrol),
              CustomInput(icon: Icons.lock_outline, placeholder: 'Contraseña', textController: passCtrol, isPassword: true),
              
              CustomButton(text: 'Registrar', 
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