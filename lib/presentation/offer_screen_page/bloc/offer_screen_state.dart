// ignore_for_file: must_be_immutable

part of 'offer_screen_bloc.dart';

/// Represents the state of OfferScreen in the application.
class OfferScreenState extends Equatable {
  OfferScreenState({this.offerScreenModelObj});

  OfferScreenModel? offerScreenModelObj;

  @override
  List<Object?> get props => [
        offerScreenModelObj,
      ];
  OfferScreenState copyWith({OfferScreenModel? offerScreenModelObj}) {
    return OfferScreenState(
      offerScreenModelObj: offerScreenModelObj ?? this.offerScreenModelObj,
    );
  }
}
