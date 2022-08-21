import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Top Nav bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/images/pp.jpg",
                          width: 60,
                          height: 60,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome !",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w400, fontSize: 30),
                        ),
                        Row(
                          children: [
                            Text(
                              "Rohan Manandhar ",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600,
                                fontSize: 36,
                              ),
                            ),
                            Icon(
                              Icons.check_circle,
                              color: Colors.blueAccent,
                              size: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                //icon
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
