import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/home/home.dart';
import '../services/drawer.dart';
import '../services/my_buttons.dart';




class Withdraw extends StatelessWidget {
  Withdraw({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _logoutScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       // Add a key to the Scaffold widget to reference it from another widget
      key: _scaffoldKey,

       // Add a Drawer widget to the Scaffold
       drawer: MyDrawer(
    scaffoldKey: _scaffoldKey,
    logoutScaffoldKey: _logoutScaffoldKey, // <-- add this line
  ),

      appBar: AppBar(
        leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(),
                ));
              },
              icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.deepPurple,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box_rounded,
                  size: 40,
                ),
                color: Colors.deepPurple,

              ),
            ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('lib/images/logo.png',
              width: 45,
              height: 45,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10,0,0,0),
                child: Text(
                  'PICKLORD',
                  style: GoogleFonts.oswald(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Text(
                  '\$0.00',
                  style: GoogleFonts.oswald(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Divider(
              color: Colors.grey.shade500,
              thickness: 1,
            ),

            const SizedBox(height: 10),

            Column(
              children: [
                Container(
                  width: 380,
                  height: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(6, 6),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-6, -6),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 260, 0),
                        child: Text(
                          'YOUR BALANCE',
                          style: GoogleFonts.oswald(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 260, 0),
                        child: Text(
                          '\$0.00',
                          style: GoogleFonts.oswald(
                            color: Colors.green,
                            fontSize: 30,
                          ),
                        ),
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10,15, 8),
                            child: Text(
                              'ENTER THE AMOUNT YOU\'D LIKE TO WITHDRAW FROM'
                                  ' YOUR CREDIT.',
                              style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 260, 0),
                            child: Container(
                              width: 70,
                              height: 55,
                              margin: const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  // Darker Shadow On Top Left
                                  const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(6, 6),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  ),
                                  BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(-6, -6),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Text(
                                  '   [-|-|--]\n'
                                      '   [-|-|--]',
                                  style: GoogleFonts.oswald(
                                    color: Colors.amber,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Text(
                              '0123    4567    8901    2345',
                              style: GoogleFonts.oxanium(
                                color: Colors.black,
                                fontSize: 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 260, 0),
                      child: Text('WITHDRAWAL AMOUNT',
                        style: GoogleFonts.oswald(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20,30),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'ENTER AMOUNT',
                          hintStyle: GoogleFonts.oswald(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  MyButton(
                    text: 'SUBMIT',
                    onTap: () {
                    },
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(horizontal: 150),
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                      child: Text('. 1x play through of deposit and promo is required before withdrawal \n'
                          '. Minimum withdrawal amount is #1000 \n'
                          '. Withdrawals are processed using Instant Bank Transfer or a direct card payment '
                          'to one of your previous deposit methods\n'
                          '. After a withdrawal method is selected and initiated, funds should be '
                          'received within 48 hours.',
                        style: GoogleFonts.oswald(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}