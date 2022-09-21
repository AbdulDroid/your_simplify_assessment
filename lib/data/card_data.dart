import 'package:your_simplify_assessment/models/card.dart';

List<CreditCard> getCards() {
  return [
    CreditCard(type: 'Virtual', pan: '1234  5678  9012  3456', expiry: '12/34', cvv: '123', holderName: 'Janet M Doe', issuerName: 'mastercard', issuerLogo: 'assets/images/mastercard.png'),
    CreditCard(type: 'Physical', pan: '1234  5678  5399  1290', expiry: '12/25', cvv: '456', holderName: 'John Appleseed', issuerName: 'mastercard', issuerLogo: 'assets/images/mastercard.png'),
    CreditCard(type: 'Virtual', pan: '1234  5678  8122  9000', expiry: '12/22', cvv: '789', holderName: 'Martin X Tyler', issuerName: 'mastercard', issuerLogo: 'assets/images/mastercard.png'),
  ];
}