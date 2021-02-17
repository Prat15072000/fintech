import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'shared/colors.dart';
import 'widget/tables.dart';

class Technical_Indicators extends StatefulWidget {
  @override
  _Technical_IndicatorsState createState() => _Technical_IndicatorsState();
}

class _Technical_IndicatorsState extends State<Technical_Indicators> {
  String _country = null;
  String _bar = null;
  String _pivots = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.getBackground(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: AppColor.getWhite(),
                        ),
                        onPressed: () {}),
                    Text(
                      'USD/INR',
                      style: GoogleFonts.ibmPlexSans(
                        fontSize: 21,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        color: AppColor.getWhite(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.getBorder()),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: AppColor.getBorder(),
                    isExpanded: true,
                    value: _country, //add value that is showing your choice
                    hint: _country == null
                        ? Text(
                            'Technical Indicators',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSans(
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                              color: AppColor.getWhite(),
                            ),
                          )
                        : Center(
                            child: Text(
                              _country,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ibmPlexSans(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                color: AppColor.getWhite(),
                              ),
                            ),
                          ),
                    items: ['Sample', 'Text'].map((val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Center(
                          child: Text(
                            val,
                            style: GoogleFonts.ibmPlexSans(
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                              color: AppColor.getWhite(),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _country = val;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Summary',
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: AppColor.getWhite())),
              Container(
                height: 200,
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(28, 5, 28, 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 150,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: StepProgressIndicator(
                            totalSteps: 200,
                            currentStep: 197,
                            size: 8,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.yellowAccent,
                                Colors.deepOrange,
                                Colors.pink,
                                Colors.blue,
                                Colors.cyan
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 60,
                        child: ListView(
                          children: List.generate(
                            7,
                            (index) => Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: AppColor.getWhite()
                                            //                   <--- border width here
                                            ),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                      child: Text('S3',
                                          style: GoogleFonts.ibmPlexSans(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: AppColor.getWhite())),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text('Moving Averages',
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: AppColor.getWhite())),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColor.getBlue()),
                child: Center(
                  child: Text(
                    'BUY',
                    style: GoogleFonts.ibmPlexSans(
                      fontSize: 11,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                      color: AppColor.getWhite(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60.0, 20, 60, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('7',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                    Text('-',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                    Text('8',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 5, 50, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Buy',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                    Text('Neutral',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                    Text('Sell',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.getBorder()),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: AppColor.getBorder(),
                    isExpanded: true,
                    value: _bar, //add value that is showing your choice
                    hint: _bar == null
                        ? Text('Exponential',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: AppColor.getWhite()))
                        : Center(
                            child: Text(
                              _bar,
                              //textAlign: TextAlign.center,
                              style: GoogleFonts.ibmPlexSans(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                color: AppColor.getWhite(),
                              ),
                            ),
                          ),
                    items: ['Exponent', 'Youtube'].map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                          child: Text(
                            value,
                            style: GoogleFonts.ibmPlexSans(
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                              color: AppColor.getWhite(),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _bar = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Exponential(),
              SizedBox(
                height: 30,
              ),
              Text('Technical Indicators',
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: AppColor.getWhite())),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColor.getRed()),
                child: Center(
                  child: Text(
                    'STRONG SELL',
                    style: GoogleFonts.ibmPlexSans(
                      fontSize: 11,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                      color: AppColor.getWhite(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60.0, 20, 60, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                    Text('1',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                    Text('9',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 5, 50, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Buy',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                    Text('Neutral',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                    Text('Sell',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.getWhite())),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.getBorder()),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: AppColor.getBorder(),
                    isExpanded: true,
                    value: _bar, //add value that is showing your choice
                    hint: _bar == null
                        ? Text('Exponential',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: AppColor.getWhite()))
                        : Center(
                            child: Text(
                              _bar,
                              //textAlign: TextAlign.center,
                              style: GoogleFonts.ibmPlexSans(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                color: AppColor.getWhite(),
                              ),
                            ),
                          ),
                    items: ['Exponent', 'Youtube'].map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                          child: Text(
                            value,
                            style: GoogleFonts.ibmPlexSans(
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                              color: AppColor.getWhite(),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _bar = value;
                      });
                    },
                  ),
                ),
              ),
              StrongSell(),
              SizedBox(
                height: 20,
              ),
              Text('Pivot Points',
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: AppColor.getWhite())),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.getBorder()),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: AppColor.getBorder(),
                    isExpanded: true,
                    value: _pivots, //add value that is showing your choice
                    hint: _pivots == null
                        ? Text('Classic',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: AppColor.getWhite()))
                        : Center(
                            child: Text(
                              _pivots,
                              //textAlign: TextAlign.center,
                              style: GoogleFonts.ibmPlexSans(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                color: AppColor.getWhite(),
                              ),
                            ),
                          ),
                    items: ['Gold', 'Platinum'].map((value2) {
                      return DropdownMenuItem<String>(
                        value: value2,
                        child: Center(
                          child: Text(
                            value2,
                            style: GoogleFonts.ibmPlexSans(
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                              color: AppColor.getWhite(),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value2) {
                      setState(() {
                        _pivots = value2;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60.0, 20, 60, 5),
                child: Container(
                  height: 200,
                  width: 500,
                  child: ListView(
                    children: List.generate(
                      5,
                      (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('S3',
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.getWhite())),
                          Text('458.66',
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.getWhite())),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
