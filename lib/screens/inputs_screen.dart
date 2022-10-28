import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';


class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: const [
            CustomInputField(
              labelText: 'Nombre',
              hintText: 'Nombre de Usuario',
            )
          ]),
        ),
      ),
    );
  }
}

