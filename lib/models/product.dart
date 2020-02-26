import '../utils/utils.dart';

class Product {
  int id;
  String name;
  List<String> photos;
  List<String> colors;
  int price;
  String brand = "Turtle jam is a jam event that happens in bmsce and";

  Product({
    this.id,
    this.name,
    this.price,
    this.photos,
    this.colors,
  });
}

List<Product> products = [
  Product(
    id: 1,
    name: "Turtlejam",
    price: 179,
    photos: [AppImages.logo, AppImages.watch10],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
  Product(
    id: 2,
    name: "Classic Bayswater",
    price: 159,
    photos: [AppImages.watch20, AppImages.watch21],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
  Product(
    id: 3,
    name: "Classic Roselyn",
    price: 159,
    photos: [AppImages.watch30, AppImages.watch31],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
  Product(
    id: 4,
    name: "Classic Cambridge",
    price: 177,
    photos: [AppImages.watch40, AppImages.watch41],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
  Product(
    id: 5,
    name: "Turtlejam",
    price: 179,
    photos: [AppImages.logo, AppImages.watch10],
    colors: ["#E5AE87", "#C1C1C1"],
  )
];

List<Product> products1 = [
Product(
id: 6,
name: "Kakka",
price: 179,
photos: [AppImages.logo, AppImages.watch10],
colors: ["#E5AE87", "#C1C1C1"],
)];
