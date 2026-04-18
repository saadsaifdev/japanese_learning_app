class ItemModel {
  final String sound;
  final String? img;
  final String jpname;
  final String enname;

  const ItemModel(
      {this.img,
      required this.jpname,
      required this.enname,
      required this.sound});
}
