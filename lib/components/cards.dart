import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatelessWidget {
  final String balance;
  final String cardNum;
  final int expDate;
  final int expMonth;
  final int expYear;
  final String cardBrand;
  final shade;

  const Cards({
    Key? key,
    required this.balance,
    required this.cardNum,
    required this.expDate,
    required this.expMonth,
    required this.expYear,
    required this.shade,
    required this.cardBrand,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: 380,
        height: 280,
        padding: EdgeInsets.only(left: 24, right: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: shade,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rohan M.",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                Image.asset(
                  cardBrand,
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              balance.toString(),
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 46,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNum.toString(),
                  style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  expYear.toString() +
                      "/" +
                      expMonth.toString() +
                      "/" +
                      expDate.toString(),
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
