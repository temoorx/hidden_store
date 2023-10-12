/// This class is used in the [addresslist_item_widget] screen.
class AddresslistItemModel {
  AddresslistItemModel({
    this.priscekila,
    this.id,
  }) {
    priscekila = priscekila ?? "Priscekila";
    id = id ?? "";
  }

  String? priscekila;

  String? id;
}
