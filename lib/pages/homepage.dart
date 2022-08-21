import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projs/components/cards.dart';
import 'package:flutter_projs/components/list_tiles.dart';
import 'package:flutter_projs/components/payment_buttons.dart';
import 'package:flutter_projs/components/top_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.green.shade400,
        ),
        height: 80.0,
        width: 80.0,
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.black,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 40,
              ),
            ),
            IconButton(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              onPressed: () {},
              icon: Icon(
                Icons.attach_money,
                size: 40,
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TopBar(),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 240,
                child: ListView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Cards(
                      cardNum: "4214 3601 9942",
                      balance: "Nrs. 22,400.89",
                      expDate: 14,
                      expMonth: 12,
                      expYear: 2026,
                      cardBrand: "assets/images/nepal.png",
                      shade: Colors.blue.shade400,
                    ),
                    Cards(
                        balance: "\$ 1,809.99",
                        cardNum: "32190 2141 3600",
                        expDate: 17,
                        expMonth: 08,
                        expYear: 2023,
                        cardBrand: "assets/images/paypal.png",
                        shade: Colors.green.shade400),
                    Cards(
                        balance: "\$ 10.99",
                        cardNum: "09887 968 4210",
                        expDate: 17,
                        expMonth: 08,
                        expYear: 2026,
                        cardBrand: "assets/images/visa.png",
                        shade: Colors.redAccent.shade100),
                  ],
                ),
              ),
              SizedBox(
                height: 06,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: JumpingDotEffect(
                    dotWidth: 10,
                    dotHeight: 10,
                    // dotColor: Colors.red.shade400,
                    activeDotColor: Colors.blue.shade400),
              ),
              SizedBox(
                height: 032,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PaymentButtons(
                      buttonText: "Send Money",
                      iconPath: 'assets/images/sendMoney.png'),
                  PaymentButtons(
                      buttonText: "Elect. Bills",
                      iconPath: 'assets/images/invoice.png'),
                  PaymentButtons(
                      buttonText: "Credit Cd. Bills",
                      iconPath: 'assets/images/creditcard.png'),
                  PaymentButtons(
                      buttonText: "School Fees",
                      iconPath: 'assets/images/school.png'),
                ],
              ),
              SizedBox(
                height: 016,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PaymentButtons(
                      buttonText: "Bank Transfer",
                      iconPath: 'assets/images/bank.png'),
                  PaymentButtons(
                      buttonText: "Flight Tickets",
                      iconPath: 'assets/images/airplane.png'),
                  PaymentButtons(
                      buttonText: "Insurance Bills",
                      iconPath: 'assets/images/insurance.png'),
                  PaymentButtons(
                      buttonText: "Cinemas",
                      iconPath: 'assets/images/film-reel.png'),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 36),
                child: Column(
                  children: [
                    ListTiles(
                        icon: "assets/images/chart.png",
                        title: "Income vs. Expense",
                        subtitle: "Your monthly income vs expenses trend."),
                    SizedBox(
                      height: 16,
                    ),
                    ListTiles(
                        icon: "assets/images/statement.png",
                        title: "Balance Statement",
                        subtitle: "Your transaction & balance statement."),
                    SizedBox(
                      height: 16,
                    ),
                    ListTiles(
                        icon: "assets/images/medical.png",
                        title: "Medical Bills",
                        subtitle: "Pay your medical and doctor bills."),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
