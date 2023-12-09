import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/detail.dart';
import 'home.dart';

class DetailPage extends StatelessWidget {
  final Detail detail;

  const DetailPage({Key? key, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Detail'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              detail.meals?.first?.strMeal ?? 'Unknown Meal',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

