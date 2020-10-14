part of 'models.dart';

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(this.id, this.picturePath, this.name, this.description, this.ingredients,
      this.price, this.rate);

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
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
      3.4),
  Food(
      4,
      "https://1.bp.blogspot.com/-y0BwJQwsny0/Xurv5nXQwSI/AAAAAAABw5A/lIeSIRDD2k8GkccExrSrGPM78-A3AtmOQCK4BGAsYHg/s796/Nasi%2BGoreng%2BJawa1.jpg",
      "Nasi Goreng",
      "Nasi Goreng Enak.",
      "Nasi",
      12000,
      4.6),
  Food(
      5,
      "https://cdn.popbela.com/content-images/post/20200307/ba00e2cd396b0ec86314ad734194c8f4_750x500.jpg",
      "Soto Ayam",
      "Soto Ayam asli Lamongan enak",
      "Nasi, Ayam",
      10000,
      4.2),
  Food(
      6,
      "https://pbs.twimg.com/profile_images/1260089247337312256/XrPBzcsh_400x400.jpg",
      "Es Teh",
      "Es Teh Segar",
      "Teh",
      5000,
      4.4),
];
