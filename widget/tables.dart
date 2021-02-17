import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infigon_task/assignment_pprclip/shared/colors.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StrongSell extends StatelessWidget {
  const StrongSell({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DataTable(
        headingRowHeight: 40,
        dataRowHeight: 30,
        headingRowColor: MaterialStateColor.resolveWith(
          (states) {
            return AppColor.getBorder();
          },
        ),
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Period',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Value',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Action',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'RSI(14)',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                '-45.23',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'NEUTRAL ',
                style: TextStyle(color: Colors.yellow),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'ADX',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                '-25.22',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'SELL',
                style: TextStyle(color: Colors.red),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'STCOH',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                '-25.22',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'BUY',
                style: TextStyle(color: Colors.blue),
              )),
            ],
          ),
        ],
      ),
    );
  }
}

class Exponential extends StatelessWidget {
  const Exponential({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DataTable(
        headingRowHeight: 40,
        dataRowHeight: 30,
        headingRowColor: MaterialStateColor.resolveWith(
          (states) {
            return AppColor.getBorder();
          },
        ),
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Period',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Value',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Type',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'MA5',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                '466.5',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'SELL ',
                style: TextStyle(color: Colors.red),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'MA10',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                '426.5',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'SELL ',
                style: TextStyle(color: Colors.red),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'MA20',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                '465.5',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'BUY',
                style: TextStyle(color: Colors.blue),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'MA100',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                '466.5',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'SELL ',
                style: TextStyle(color: Colors.red),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'MA5',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                '466.5',
                style: TextStyle(color: Colors.white),
              )),
              DataCell(Text(
                'SELL ',
                style: TextStyle(color: Colors.red),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
