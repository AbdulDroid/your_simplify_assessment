import 'package:flutter/material.dart';
import 'package:your_simplify_assessment/components/summary_card_widget.dart';
import 'package:your_simplify_assessment/data/summary_data.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              margin: EdgeInsets.zero,
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 36.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('assets/images/userAvatar.png'),
                              const SizedBox(width: 8.0),
                              const Text(
                                'Hi Janet,',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/search.png'),
                              const SizedBox(width: 8.0),
                              Image.asset('assets/images/help-circle.png'),
                              const SizedBox(width: 8.0),
                              Image.asset('assets/images/bell.png'),
                              const SizedBox(width: 8.0),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 36.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: getSummary().map((element) {
                          return SummaryCard(element: element);
                          }).toList(),
                      )
                    ]),
              ),
            );
  }
}