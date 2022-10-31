import 'package:flutter/material.dart';
import '../Widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': '',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Nombre',
                counterText: 'Auxiliar',
                helperText: 'Coloca nombre',
                hintText: 'Nombre de usuario',
                icon: Icons.supervised_user_circle_rounded,
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomInputField(
                labelText: 'Apellido',
                counterText: 'Auxiliar',
                helperText: 'Coloca el apellido',
                hintText: 'Apellido de usuario',
                icon: Icons.supervised_user_circle,
                formProperty: 'last_name',
                formValues: formValues,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              CustomInputField(
                keyboardType: TextInputType.emailAddress,
                labelText: 'Email',
                counterText: 'Auxiliar',
                helperText: 'Coloca el email',
                hintText: 'email de usuario',
                icon: Icons.mail_outline,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomInputField(
                keyboardType: TextInputType.emailAddress,
                labelText: 'Password',
                counterText: 'Auxiliar',
                helperText: 'Coloca el password',
                hintText: 'Password de usuario',
                obscureText: true,
                icon: Icons.verified_user,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(
                        value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(
                        value: 'Jr. Developer', child: Text('Jr. Developer'))
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 275,
                      height: 35,
                      child: ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());

                            if (!myFormKey.currentState!.validate()) {
                              print('formulario no valido');
                              return;
                            }
                            //Imprime los valores del formulario
                            print(formValues);
                          },
                          child: Text('Guardar')))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
