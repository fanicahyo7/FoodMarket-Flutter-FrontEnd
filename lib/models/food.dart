part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(this.id, this.picturePath, this.name, this.description, this.ingredients,
      this.price, this.rate);
}

Food mockFood = Food(
    1,
    "https://www.wartabromo.com/wp-content/uploads/WhatsApp-Image-2019-07-05-at-7.47.09-AM.jpeg",
    "Bakso Malang",
    "Bakso ini terbuat dari daging sapi berkualitas dan sangat terkenal di Kota Malang.",
    "Daging Sapi",
    12000,
    4.2);
