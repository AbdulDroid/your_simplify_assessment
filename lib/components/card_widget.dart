import 'package:flutter/material.dart';
import 'package:your_simplify_assessment/colors.dart';
import 'package:your_simplify_assessment/models/card.dart';

class CardWidget extends StatelessWidget {
  final CreditCard card;
  final int index;
  final int size;
  const CardWidget(
      {Key? key, required this.card, required this.index, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double leftPadding = index == 0 ? 28.0 : 8.0;
    final double rightPadding = index == size - 1 ? 28.0 : 8.0;
    return Padding(
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/card_background.png'),
                fit: BoxFit.fill),
            color: primaryColor,
            borderRadius: BorderRadius.circular(11)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22.0, 22.0, 24.0, 17.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    card.type,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    card.pan,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6.0),
                  SizedBox(
                    width: 104.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Expiry date',
                              style: TextStyle(
                                  fontSize: 7,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 1),
                            Text(
                              card.expiry,
                              style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'CVV',
                              style: TextStyle(
                                  fontSize: 7,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 1),
                            Text(
                              card.cvv,
                              style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    card.holderName,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(width: 36.0),
              SizedBox(
                height: 51.0,
                child: Column(
                  children: [
                    Image.asset(card.issuerLogo),
                    const SizedBox(height: 2),
                    Text(
                      card.issuerName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
