import 'package:flutter/material.dart';

class CompanyDashboard extends StatefulWidget {
  final dynamic companyData;
  const CompanyDashboard({required this.companyData, super.key});

  @override
  State<CompanyDashboard> createState() => _CompanyDashboardState();
}

class _CompanyDashboardState extends State<CompanyDashboard> {
  final List<bool> _isExpandedList = [false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Paladis',
          // style: TextStyle(color: Colors.teal),
        ),
        // leading:,
      ),
      body: Column(
        children: [
          // Padding(padding: EdgeInsets.all(10)),
          // const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              // margin:EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.teal.shade300,
                  boxShadow: const [BoxShadow(blurRadius: 1)],
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.companyData['companyDTO']['companyName'],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "Country : ${widget.companyData['companyDTO']['companyCountryDescription']}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal)),
                          Text(
                              "Registration ID:${widget.companyData['companyDTO']['companyRegistrationId']}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal)),
                        ],
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Tuesday 2,2023'),
                            Text('Welcome,'),
                            Text('Jane'),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    'Status:${widget.companyData['statusDTO']['description']}'),
                widget.companyData['statusDTO']['description'] != 'Accepted'
                    ? Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.teal)),
                              onPressed: () {},
                              child: const Text(
                                'Accept',
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red)),
                              onPressed: () {},
                              child: const Text('Reject')),
                        ],
                      )
                    : Container()
              ],
            ),
          ),
          ExpansionPanelList(
            expansionCallback: (int panelIndex, bool isExpanded) {
              setState(() {
                _isExpandedList[panelIndex] = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Text('General Information',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),);
                },
                isExpanded: _isExpandedList[0],
                body: Column(
                  children: [
                    Text(widget.companyData['userDTO']['nationality']),
                    const Text(
                      'This is the content for body 1 here we showing some scrolling data',
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
