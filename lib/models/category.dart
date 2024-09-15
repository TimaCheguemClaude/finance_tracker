class CategoryFields {
  static final String table = 'categories';
  static final String id = '_id';
  static final String name = 'name';
  static final String type = 'type';
}

class Category {
  final int? id;
  final String name;
  final String type;

  Category({
    this.id,
    required this.name,
    required this.type,
  });

  Category copy({
    int? id,
    String? name,
    String? type,
  }) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
      );

  static Category fromJson(Map<String, Object?> json) => Category(
        id: json[CategoryFields.id] as int?,
        name: json[CategoryFields.name] as String,
        type: json[CategoryFields.type] as String,
      );

  Map<String, Object?> toJson() => {
        CategoryFields.id: id,
        CategoryFields.name: name,
        CategoryFields.type: type,
      };
}