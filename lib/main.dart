// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TODO APP",
      home: TODOAPP(),
    ));

class TODOAPP extends StatefulWidget {
  const TODOAPP({super.key});

  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  late String Value;
  var listTODO = [''];
  addTODO(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo App"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          // ignore: sort_child_properties_last
          child: Icon(Icons.add),
          onPressed: () {
            addTODO(Value);
          },
        ),
        body: ListView.builder(
            itemCount: listTODO.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "Add Item"),
                        onChanged: (val) {
                          Value = val;
                        },
                      ),
                    )
                  : ListTile(
                      leading: Icon(Icons.work),

                      // ignore: unnecessary_string_interpolations
                      title: Text('${listTODO[index]}'),
                    );
            }));
  }
}
