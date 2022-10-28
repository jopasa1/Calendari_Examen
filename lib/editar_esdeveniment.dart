import 'package:flutter/material.dart';


class EditarEsdevenimentForm extends StatefulWidget {
  const EditarEsdevenimentForm({Key? key}) : super(key: key);

  @override
  State<EditarEsdevenimentForm> createState() => _EditarEsdevenimentFormState();
}

class _EditarEsdevenimentFormState extends State<EditarEsdevenimentForm> {

  final _clauFormulari=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calendari Jordi Pascual Sanchez"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Títol"
            ),
          ),
          FormField<TimeOfDay>(
            builder: (formFieldState) {
              return TextButton(
                onPressed: () async {
                  TimeOfDay? theTime = await showTimePicker(
                      initialTime: const TimeOfDay(hour: 00, minute: 00),
                      context: context);
                  if (theTime != null) {
                    formFieldState.didChange(theTime);
                  }
                },
                child: Text(
                    "Hora Inici: ${formFieldState.value?.format(context) ?? "Tap to define"}"),
              );
            },
          ),
          FormField<TimeOfDay>(
            builder: (formFieldState) {
              return TextButton(
                onPressed: () async {
                  TimeOfDay? theTime = await showTimePicker(
                      initialTime: const TimeOfDay(hour: 00, minute: 00),
                      context: context);
                  if (theTime != null) {
                    formFieldState.didChange(theTime);
                  }
                },
                child: Text(
                    "Hora Fi: ${formFieldState.value?.format(context) ?? "Tap to define"}"),
              );
            },
          ),
          TextFormField(
              maxLines: 5,
              expands: false,
              decoration: const InputDecoration(
                labelText: "Descripció",
                alignLabelWithHint: true,
              ),
          ),
          Row(
            children: [
              FloatingActionButton(
                  child: const Icon(Icons.save),
                  onPressed: (){

                  }
              ),
              FloatingActionButton(
                  child: const Icon(Icons.delete),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/calendari/view' );
                  }
              ),
            ],
          ),
        ],
      ),
    );
  }
}