// ignore_for_file: must_be_immutable

part of 'favorite_product_bloc.dart';

/// Represents the state of FavoriteProduct in the application.
class FavoriteProductState extends Equatable {
  FavoriteProductState({this.favoriteProductModelObj});

  FavoriteProductModel? favoriteProductModelObj;

  @override
  List<Object?> get props => [
        favoriteProductModelObj,
      ];
  FavoriteProductState copyWith(
      {FavoriteProductModel? favoriteProductModelObj}) {
    return FavoriteProductState(
      favoriteProductModelObj:
          favoriteProductModelObj ?? this.favoriteProductModelObj,
    );
  }
}
