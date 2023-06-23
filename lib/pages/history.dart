import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/home/home.dart';
import '../services/drawer.dart';
import 'package:intl/intl.dart';

import '../services/my_cupertino_button.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final GlobalKey<ScaffoldState> _logoutScaffoldKey =
  GlobalKey<ScaffoldState>();

  DateTime dateTime = DateTime.now();
  String dropdownValue = 'Category';

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
            icon: const Icon(
              Icons.add_box_rounded,
              size: 40,
            ),
            color: Colors.deepPurple,
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'lib/images/logo.png',
              width: 45,
              height: 45,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
            Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Text(
                    'Transaction Log',
                    style: GoogleFonts.oswald(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  // Add other widgets for container 1 as needed
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyCupertinoButton(
                        onPressed: () {
                          // Add the logic for date selection using a calendar widget
                          // for Button 1
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext context) => Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),

                                child: SizedBox(
                                  height: 250,
                                  width: 250,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[450],
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
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: CupertinoTheme(
                                            data: CupertinoThemeData(
                                              textTheme: CupertinoTextThemeData(
                                                dateTimePickerTextStyle: GoogleFonts.oswald(
                                                  fontSize: 20,
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            child: CupertinoDatePicker(
                                              initialDateTime: dateTime,
                                              onDateTimeChanged: (DateTime newTime) {
                                                setState(() => dateTime = newTime);
                                              },
                                              mode: CupertinoDatePickerMode.monthYear,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        color: Colors.black, // Customize the button color
                        text: '${DateFormat('MMMM').format(dateTime)} ${dateTime.year}',
                        fontSize: 16,
                      ),

                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyCupertinoButton(
                      onPressed: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext context) => SizedBox(
                            height:450,
                            width: 250,
                            child: CupertinoActionSheet(
                              actions: [
                                CupertinoActionSheetAction(
                                  onPressed: () {
                                    // Handle Entries Placed selection
                                    setState(() {
                                      dropdownValue = 'Entries Placed';
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Entries Placed',
                                    style: GoogleFonts.oswald(
                                      fontSize: 16,
                                      color: Colors.black, // Set the desired text color
                                    ),
                                  ),
                                ),

                                CupertinoActionSheetAction(
                                  onPressed: () {
                                    // Handle Entries Won selection
                                    setState(() {
                                      dropdownValue = 'Entries Won';
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Entries Won',
                                    style: GoogleFonts.oswald(
                                      fontSize: 16,
                                      color: Colors.black, // Set the desired text color
                                    ),
                                  ),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {
                                    // Handle Deposits selection
                                    setState(() {
                                      dropdownValue = 'Deposits';
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Deposits',
                                    style: GoogleFonts.oswald(
                                      fontSize: 16,
                                      color: Colors.black, // Set the desired text color
                                    ),
                                  ),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {
                                    // Handle Entries Placed selection
                                    setState(() {
                                      dropdownValue = 'Withdrawals';
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Withdrawals',
                                    style: GoogleFonts.oswald(
                                      fontSize: 16,
                                      color: Colors.black, // Set the desired text color
                                    ),
                                  ),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {
                                    // Handle Entries Won selection
                                    setState(() {
                                      dropdownValue = 'Entry Refunds';
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Entry Refunds',
                                    style: GoogleFonts.oswald(
                                      fontSize: 16,
                                      color: Colors.black, // Set the desired text color
                                    ),
                                  ),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {
                                    // Handle Deposits selection
                                    setState(() {
                                      dropdownValue = 'Adjustments';
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Adjustments',
                                    style: GoogleFonts.oswald(
                                      fontSize: 16,
                                      color: Colors.black, // Set the desired text color
                                    ),
                                  ),
                                ),
                              ],
                              cancelButton: CupertinoActionSheetAction(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: GoogleFonts.oswald(
                                    fontSize: 16,
                                    color: Colors.black, // Set the desired text color
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      color: Colors.black, // Customize the button color
                      text: dropdownValue,
                      fontSize: 16,
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
