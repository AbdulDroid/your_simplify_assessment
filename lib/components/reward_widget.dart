import 'package:flutter/material.dart';
import 'package:your_simplify_assessment/colors.dart';

class RewardWidget extends StatelessWidget {
  const RewardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Card(
        margin: EdgeInsets.zero,
        color: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primaryColor, const Color(0xFF491B84)],
              stops: const [0.6, 1.0],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Congratulations!!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 2),
                        RichText(
                          text: const TextSpan(
                              text:
                                  'You\'ve completed all your tasks for the week and you won ',
                              children: [
                                TextSpan(
                                    text: '150 points.',
                                    style: TextStyle(
                                        color: Color(0xFFF18701),
                                        fontWeight: FontWeight.bold))
                              ],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 18.0,
                      child: ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              width: 0.52, color: Color(0xFF0D073B)),
                          elevation: 1,
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 33),
                          primary: Colors.white,
                          onPrimary: const Color(0xFF3D348B),
                          textStyle: const TextStyle(
                              color: Color(0xFF3D348B),
                              fontSize: 7,
                              fontWeight: FontWeight.w600),
                        ),
                        child: const Text('Redeem Now!'),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset('assets/images/chest-open.png'),
            ],
          ),
        ),
      ),
    );
  }
}
