import 'package:makdeck/models/Cart/cart_product.dart';

enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
}

enum PaymentMethod {
  cashOnDelivery,
  prepaid,
}

class OrderModel {
  String orderid;
  List<CartProductModel> cartproducts;
  String userUID;
  String userEmail;
  String userPhone;
  String userAddress;
  double paymentAmount;
  String trackingID;
  String userPaymentMethod;
  OrderStatus orderStatus;
  String orderDate;
  String orderTime;
  PaymentMethod paymentMethod;

  OrderModel(
      {required this.orderid,
      required this.cartproducts,
      required this.userUID,
      required this.userEmail,
      required this.userPhone,
      required this.userAddress,
      required this.paymentAmount,
      required this.trackingID,
      required this.userPaymentMethod,
      required this.orderStatus,
      required this.orderDate,
      required this.orderTime,
      required this.paymentMethod});

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      orderid: map['orderid'],
      cartproducts: (map['cartproducts'] as List)
          .map((e) => CartProductModel.fromMap(e))
          .toList(),
      userUID: map['userUID'],
      userEmail: map['userEmail'],
      userPhone: map['userPhone'],
      userAddress: map['userAddress'],
      paymentAmount: map['paymentAmount'],
      trackingID: map['trackingID'],
      userPaymentMethod: map['userPaymentMethod'],
      orderStatus: map['orderStatus'],
      orderDate: map['orderDate'],
      orderTime: map['orderTime'],
      paymentMethod: map['paymentMethod'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'orderid': orderid,
      'cartproducts': cartproducts.map((e) => e.toMap()).toList(),
      'userUID': userUID,
      'userEmail': userEmail,
      'userPhone': userPhone,
      'userAddress': userAddress,
      'paymentAmount': paymentAmount,
      'trackingID': trackingID,
      'userPaymentMethod': userPaymentMethod,
      'orderStatus': orderStatus,
      'orderDate': orderDate,
      'orderTime': orderTime,
      'paymentMethod': paymentMethod,
    };
  }
}