part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  factory Food.fromJson(Map<String, dynamic> data) => Food(
      id: data['id'],
      picturePath: data['picturePath'],
      name: data['name'],
      description: data['description'],
      ingredients: data['ingredients'],
      price: data['price'],
      rate: (data['rate'] as num).toDouble(),
      types: data['types'].toString().split(',').map((e) {
        switch (e) {
          case 'recommended':
            return FoodType.recommended;
            break;
          case 'popular':
            return FoodType.popular;
            break;
          default:
            return FoodType.new_food;
        }
      }).toList());

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate, types];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://www.wartabromo.com/wp-content/uploads/WhatsApp-Image-2019-07-05-at-7.47.09-AM.jpeg",
      name: "Bakso Malang",
      description: "Bakso ini terbuat dari daging sapi berkualitas dan sangat terkenal di Kota Malang.",
      ingredients: "Daging Sapi",
      price: 12000,
      rate: 4.2,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 2,
      picturePath: "https://kbu-cdn.com/dk/wp-content/uploads/sate-kakul.jpg",
      name: "Sate Madura",
      description: "Sate Ayam asli Madura. Rasanya enak dan bikin ketagihan",
      ingredients: "Ayam, Bumbu Kacang",
      price: 10000,
      rate: 4.5),
  Food(
      id: 3,
      picturePath:
          "https://1.bp.blogspot.com/-cEQ1uvxECJU/XQcJ1WBhf3I/AAAAAAAADGE/6arTC6DlGqsfTwWvHPqQ7t6IpxHce5vcQCLcBGAs/s1600/Sempol.jpg",
      name: "Sempol Ayam",
      description: "Sempol Ayam. Rasanya enak dan bikin ketagihan",
      ingredients: "Ayam",
      price: 10000,
      rate: 3.4,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          "https://1.bp.blogspot.com/-y0BwJQwsny0/Xurv5nXQwSI/AAAAAAABw5A/lIeSIRDD2k8GkccExrSrGPM78-A3AtmOQCK4BGAsYHg/s796/Nasi%2BGoreng%2BJawa1.jpg",
      name: "Nasi Goreng",
      description: "Nasi Goreng Enak.",
      ingredients: "Nasi",
      price: 12000,
      rate: 4.6,
      types: [FoodType.recommended]),
  Food(
      id: 5,
      picturePath:
          "https://cdn.popbela.com/content-images/post/20200307/ba00e2cd396b0ec86314ad734194c8f4_750x500.jpg",
      name: "Soto Ayam",
      description: "Soto Ayam asli Lamongan enak",
      ingredients: "Nasi, Ayam",
      price: 10000,
      rate: 4.2,
      types: [FoodType.recommended]),
  Food(
      id: 6,
      picturePath:
          "https://pbs.twimg.com/profile_images/1260089247337312256/XrPBzcsh_400x400.jpg",
      name: "Es Teh",
      description: "Es Teh Segar",
      ingredients: "Teh",
      price: 5000,
      rate: 4.4,
      types: [FoodType.popular]),
];
