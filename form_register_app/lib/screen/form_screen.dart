import 'package:flutter/material.dart';
import 'package:form_register_app/theme/app_theme.dart';
import 'package:form_register_app/widgets/widgets.dart';

class FormRegisterScreen extends StatelessWidget {
  const FormRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Jesús',
      'last_name': 'Canales Guando',
      'email': 'jesuscanales@outlook.com',
      'password': 'HolaMundo2022',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
          title: const Text('Form to register'),
          backgroundColor: AppTheme.primary),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre de usuario',
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: 'Apellidos',
                hintText: 'Apellidos del usuario',
                formProperty: 'last_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Correo',
                hintText: 'Correo del usuario',
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'Contraseña del usuario',
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(
                    value: 'Admin',
                    child: Text('Admin'),
                  ),
                  DropdownMenuItem(
                    value: 'superuser',
                    child: Text('Superuser'),
                  ),
                  DropdownMenuItem(
                    value: 'Developer',
                    child: Text('Developer'),
                  ),
                  DropdownMenuItem(
                    value: 'Jr. Developer',
                    child: Text('Jr. Developer'),
                  ),
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },
              ),
              ElevatedButton(
                child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))),
                onPressed: () {
                  FocusScope.of(context).requestFocus((FocusNode()));
                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no válido');
                    return;
                  }
                  print(formValues);
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
