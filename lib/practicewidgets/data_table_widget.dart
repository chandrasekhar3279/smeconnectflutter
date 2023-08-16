import 'package:flutter/material.dart';
class DataTabaleWidget extends StatelessWidget {
  const DataTabaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10),
        child: Text('cell1'),),
         Padding(padding: EdgeInsets.all(10),
        child: Text('cell2'),),
         Padding(padding: EdgeInsets.all(10),
        child: Text('cell3'),),

      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table Widget'),
      ),
      body: Center(child: Table(
        border: TableBorder.all(),
        children: <TableRow> [
          _tableRow,
          _tableRow,
          _tableRow,
          _tableRow,

        ],
      )),
    );
  }
}