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

List<Food> mockFoods = [
  Food(
      1,
      "https://www.wartabromo.com/wp-content/uploads/WhatsApp-Image-2019-07-05-at-7.47.09-AM.jpeg",
      "Bakso Malang",
      "Bakso ini terbuat dari daging sapi berkualitas dan sangat terkenal di Kota Malang.",
      "Daging Sapi",
      12000,
      4.2),
  Food(
      2,
      "https://kbu-cdn.com/dk/wp-content/uploads/sate-kakul.jpg",
      "Sate Madura",
      "Sate Ayam asli Madura. Rasanya enak dan bikin ketagihan",
      "Ayam, Bumbu Kacang",
      10000,
      4.5),
  Food(
      3,
      "https://1.bp.blogspot.com/-cEQ1uvxECJU/XQcJ1WBhf3I/AAAAAAAADGE/6arTC6DlGqsfTwWvHPqQ7t6IpxHce5vcQCLcBGAs/s1600/Sempol.jpg",
      "Sempol Ayam",
      "Sempol Ayam. Rasanya enak dan bikin ketagihan",
      "Ayam",
      10000,
      4.5),
];
