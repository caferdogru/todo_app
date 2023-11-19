
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todos.dart';

void  main() {
  runApp(
    MaterialApp(
      home: ToDos(),
      theme: ThemeData().copyWith(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    )
  );
}