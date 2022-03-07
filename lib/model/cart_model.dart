
class CartModel {
  String Title;
  String price;
  String mrp;
  String image;


  String get getTitle => Title;
  String get getDetail => price;
  String get getmrp => mrp;
  String get getimage => image;


  CartModel(this.Title, this.price , this.image , this.mrp);

}