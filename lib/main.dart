import 'package:flutter/material.dart';
import 'package:your_simplify_assessment/colors.dart';
import 'package:your_simplify_assessment/components/card_widget.dart';
import 'package:your_simplify_assessment/components/reward_widget.dart';
import 'package:your_simplify_assessment/components/top_bar_widget.dart';
import 'package:your_simplify_assessment/components/transaction_history_widget.dart';
import 'package:your_simplify_assessment/data/bottom_nav_data.dart';
import 'package:your_simplify_assessment/data/card_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: primaryColor,
        ),
        fontFamily: 'Manrope',
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final cards = getCards();

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FE),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const TopBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const RewardWidget(),
                    SizedBox(
                      height: 166.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cards.length,
                        itemBuilder: (context, index) {
                          return CardWidget(
                              card: cards[index],
                              index: index,
                              size: cards.length);
                        },
                      ),
                    ),
                    const TransactionHistoryWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Color(0x1A000000),
              spreadRadius: 1,
              blurRadius: 4,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          child: SizedBox(
            height: 70,
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              items: getBottomItems().asMap().entries.map((item) {
                return BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(item.value.icon),
                    color: getItemColor(item.key),
                  ),
                  label: item.value.name,
                );
              }).toList(),
              onTap: _onTapped,
              currentIndex: _selectedIndex,
              selectedItemColor: primaryColor,
              selectedFontSize: 10,
              unselectedFontSize: 10,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w600),
              unselectedItemColor: Colors.black38,
              showUnselectedLabels: true,
            ),
          ),
        ),
      ),
    );
  }

  Color getItemColor(int index) {
    if (_selectedIndex == index) {
      return primaryColor;
    } else {
      return Colors.black38;
    }
  }
}
