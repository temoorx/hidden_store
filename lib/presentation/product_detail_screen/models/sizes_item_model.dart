/// This class is used in the [sizes_item_widget] screen.
class SizesItemModel {
  SizesItemModel({
    this.six,
    this.id,
  }) {
    six = six ?? "6";
    id = id ?? "";
  }

  String? six;

  String? id;
}
