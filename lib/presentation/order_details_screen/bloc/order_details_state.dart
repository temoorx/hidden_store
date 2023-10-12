// ignore_for_file: must_be_immutable

part of 'order_details_bloc.dart';

/// Represents the state of OrderDetails in the application.
class OrderDetailsState extends Equatable {
  OrderDetailsState({this.orderDetailsModelObj});

  OrderDetailsModel? orderDetailsModelObj;

  @override
  List<Object?> get props => [
        orderDetailsModelObj,
      ];
  OrderDetailsState copyWith({OrderDetailsModel? orderDetailsModelObj}) {
    return OrderDetailsState(
      orderDetailsModelObj: orderDetailsModelObj ?? this.orderDetailsModelObj,
    );
  }
}
