// categories.dart

import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: Center(
        child: Text('Categories Page Content'), // Customize as needed
      ),
    );
  }
}
