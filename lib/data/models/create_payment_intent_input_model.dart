class CreatePaymentIntentInputModel {
  final String amount;
  final String currency;

  CreatePaymentIntentInputModel({required this.amount, required this.currency});
  Map<String, dynamic> toJson() {
    return {"amount": amount, "currency": currency};
  }
}
