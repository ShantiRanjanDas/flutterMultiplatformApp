class Food {
  final int id;
  final String name, description, imageUrl;
  final List<String> category, ingredients, vegOrNonVeg;

  Food(this.id, this.name,
      this.description,
      this.imageUrl,
      this.category,
      this.ingredients,
      this.vegOrNonVeg);
}
