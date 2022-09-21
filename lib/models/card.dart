class CreditCard {
  final String type;
  final String pan;
  final String expiry;
  final String cvv;
  final String holderName;
  final String issuerName;
  final String issuerLogo;

  CreditCard(
      {required this.type,
      required this.pan,
      required this.expiry,
      required this.cvv,
      required this.holderName,
      required this.issuerName,
      required this.issuerLogo});
}
