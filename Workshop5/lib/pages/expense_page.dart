import 'package:flutter/material.dart';
import 'package:workshop5/models/expense.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  List<Expense> expenses = [
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 150,
          child: Text("Grafik Bölümü"),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                return Text(expenses[index].name);
              }),
        ),
        const SizedBox(
          height: 150,
          child: Text("Burası bottom bar."),
        )
      ]),
    );
  }
}