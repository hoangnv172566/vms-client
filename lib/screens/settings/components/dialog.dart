import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}

class AddPersonDialog extends StatefulWidget {
  @override
  _AddPersonDialogState createState() => _AddPersonDialogState();
}

class _AddPersonDialogState extends State<AddPersonDialog> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 0;

  void _fill(Person person){}

  void _apply() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Person newPerson = Person(name: _name, age: _age);
      print('New Person: ${newPerson.name}, ${newPerson.age}');
      Navigator.of(context).pop();
    }
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add New Person'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
              onSaved: (value) {
                _name = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an age';
                }
                if (int.tryParse(value) == null) {
                  return 'Please enter a valid number';
                }
                return null;
              },
              onSaved: (value) {
                _age = int.parse(value!);
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: _apply,
          child: Text('Apply'),
        ),
        ElevatedButton(
          onPressed: _cancel,
          child: Text('Cancel'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
      ],
    );
  }
}
