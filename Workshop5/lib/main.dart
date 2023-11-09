import 'package:flutter/material.dart';
import 'package:workshop5/models/expense.dart';
import 'package:workshop5/pages/expense_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(2, 0, 53, 1.0),
          leading: const Icon(Icons.home_outlined),
          title: const Text("ExpenseApp"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.perm_identity)),
          ],
        ),
        body: const ExpensesPage(),
      ),
    ),
  );
}
