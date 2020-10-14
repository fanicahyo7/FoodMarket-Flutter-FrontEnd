part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User moskUser = User(
  id: 1,
  name: "Rose",
  email: "rose@gmail.com",
  address: "Jl. Mojowangi",
  houseNumber: "B3",
  phoneNumber: "082347882944",
  city: "Batu",
  picturePath: "https://www.wowkeren.com/display/images/photo/2019/09/02/00271050.jpg"
);