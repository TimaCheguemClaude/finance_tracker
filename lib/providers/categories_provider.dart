// lib/providers/categories_provider.dart
/*
import 'package:flutter/foundation.dart';
import 'package:finance_tracker/models/category.dart';
import 'package:finance_tracker/services/database_service.dart';

class CategoriesProvider with ChangeNotifier {
  List<Category> _categories = [];

  List<Category> get categories => _categories;

  Future<void> loadCategories() async {
    _categories = await DatabaseService.instance.getCategories();
    notifyListeners();
  }

  Future<void> addCategory(Category category) async {
    final newCategory = await DatabaseService.instance.insertCategory(category);
    _categories.add(newCategory);
    notifyListeners();
  }

  Future<void> updateCategory(Category category) async {
    final index = _categories.indexWhere((c) => c.id == category.id);
    if (index >= 0) {
      await DatabaseService.instance.updateCategory(category);
      _categories[index] = category;
      notifyListeners();
    }
  }

  Future<void> deleteCategory(int id) async {
    final index = _categories.indexWhere((c) => c.id == id);
    if (index >= 0) {
      await DatabaseService.instance.deleteCategory(id);
      _categories.removeAt(index);
      notifyListeners();
    }
  }
}*/