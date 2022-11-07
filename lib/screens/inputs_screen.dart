import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'last_name': 'Herrera',
      'email': 'fernando@google.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre de Usuario',
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido de Usuario',
                formProperty: 'last_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Correo',
                hintText: "Correo de Usuario",
                inputType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: "Contraseña de Usuario",
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButtonFormField<String>(
                value: 'Admin',
                items: const [
                  DropdownMenuItem(
                    value: 'Admin',
                    child: Text('Admin'),
                  ),
                  DropdownMenuItem(
                    value: 'SuperUser',
                    child: Text('SuperUser'),
                  ),
                  DropdownMenuItem(
                    value: 'Developer',
                    child: Text('Developer'),
                  ),
                  DropdownMenuItem(
                    value: 'Junior',
                    child: Text('Junior'),
                  )
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },
              ),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate()) {
                    print('formulario no valido');
                    return;
                  }
                  print(formValues);
                },
                child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
