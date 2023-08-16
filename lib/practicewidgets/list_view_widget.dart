import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smeconnect/practicewidgets/company_detailed_page.dart';

class ListApiWidget extends StatelessWidget {
  final dynamic data;
  const ListApiWidget({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    // final formatter = DateFormat.yMd();

    //  String parseDateString(String dateString) {
    //  return formatter.format(DateFormat('yyyy-MM-dd').parse(dateString.substring(0, 10)));
    // }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        title: const Text(
          'Paladis',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      // body: SingleChildScrollView(
      // child: Column(
      //   children: [
      //     for (final item in data)
      //       Container(
      //         margin: const EdgeInsets.all(8),
      //         decoration: BoxDecoration(
      //           boxShadow: const [BoxShadow(blurRadius: 4)],
      //           color: Colors.teal.shade100,
      //         ),
      //         child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Expanded(
      //                 child: Column(
      //                   // mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     const Text('Application ID'),
      //                     Text(item['id'].toString()),
      //                     const Text('Company Name'),
      //                     const Text('Requester')
      //                   ],
      //                 ),
      //               ),
      //               const Column(
      //                 crossAxisAlignment: CrossAxisAlignment.end,
      //                 children: [Text('Submission Date'), Text('Status')],
      //               )
      //             ]),
      //       )
      //   ],
      // ),
      // child: Column(children: [
      //   ...data.map(
      //     (item) {
      //       return Container(
      //         margin: const EdgeInsets.all(8),
      //         decoration: BoxDecoration(
      //             boxShadow: const [BoxShadow(blurRadius: 2)],
      //             // color: Colors.teal.shade100,
      //             color: Colors.white,
      //             borderRadius: BorderRadius.circular(8)),
      //         child: Padding(
      //           padding: const EdgeInsets.all(4.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Expanded(
      //                 child: Column(
      //                   // mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                        const Text('Application ID',
      //                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      //                        ),
      //                         Text(
      //                           item['applicaitonCode'],
      //                           style: TextStyle(
      //                               color: Colors.teal.shade300,
      //                               fontWeight: FontWeight.bold),
      //                         ),
      //                       ],
      //                     ),
      //                     const SizedBox(height: 12),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         const Text('Company Name',
      //                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      //                         ),
      //                         Text(item['companyDTO']['companyName']),
      //                       ],
      //                     ),
      //                     const SizedBox(height: 12),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         const Text('Requester',
      //                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      //                         ),
      //                         Text(item['companyDTO']['companyEmail']
      //                             .toString()),
      //                       ],
      //                     )
      //                   ],
      //                 ),
      //               ),
      //               Column(
      //                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 crossAxisAlignment: CrossAxisAlignment.end,
      //                 children: [
      //                   const SizedBox(height: 12),
      //                   const Text('Submission Date',
      //                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      //                   ),
      //                   // Text(
      //                   //     item['companyDTO']['createdDateTime'].toString()),
      //                   Text(
      //                     // parseDateString(
      //                       convertToFormattedDate(
      //                       item['companyDTO']['createdDateTime']),
      //                   ),
      //                       //),
      //                   // Text(
      //                   //   convertToDesiredFormat(
      //                   //       item['companyDTO']['createdDateTime']),
      //                   // ),
      //                   const SizedBox(height: 12),
      //                   Column(
      //                     children: [
      //                       const Text('Status',
      //                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      //                       ),
      //                       Text(
      //                         item['statusDTO']['description'],
      //                         style: TextStyle(
      //                             color: (item['statusDTO']['description'] ==
      //                                     'Accepted')
      //                                 ? Colors.green
      //                                 : (item['statusDTO']['description'] ==
      //                                         'Submitted')
      //                                     ? Colors.orange
      //                                     : Colors.red),
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ]),
      // ),

      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(blurRadius: 2)],
                  // color: Colors.teal.shade100,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Application ID',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>  CompanyDashboard(companyData: item,))),
                                child: Text(
                                  item['applicaitonCode'],
                                  style: TextStyle(
                                      color: Colors.teal.shade300,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Company Name',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(item['companyDTO']['companyName']),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Requester',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),

                              item['companyDTO']['companyEmail'] != null ?
                                Text(
                                  item['companyDTO']['companyEmail'].toString(),
                                )
                              :
                                const Text('N/A')

                                
                              // if (item['companyDTO']['companyEmail'] == null)
                              //   const Text('N/A')
                              // else
                              //   Text(
                              //     item['companyDTO']['companyEmail'].toString(),
                              //   )
                              // Text(
                              //   item['companyDTO']['companyEmail']
                              //     .toString() != null ?
                              //     item['companyDTO']['companyEmail']
                              //     .toString()
                              //     : 'N/A'
                              //     ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 12),
                        const Text(
                          'Submission Date',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        // Text(
                        //     item['companyDTO']['createdDateTime'].toString()),
                        // Text(
                        //   // parseDateString(
                        //     convertToFormattedDate(
                        //     data['companyDTO']['createdDateTime']),
                        // ),
                        //),
                        Text(
                          convertToFormattedDate(
                              item['companyDTO']['createdDateTime']),
                        ),
                        const SizedBox(height: 12),
                        Column(
                          children: [
                            const Text(
                              'Status',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              item['statusDTO']['description'],
                              style: TextStyle(
                                  color: (item['statusDTO']['description'] ==
                                          'Accepted')
                                      ? Colors.green
                                      : (item['statusDTO']['description'] ==
                                              'Submitted')
                                          ? Colors.orange
                                          : Colors.red),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  String convertToFormattedDate(String inputDateStr) {
    // Parse the input string to a DateTime object
    DateTime inputDate = DateTime.parse(inputDateStr);

    // Define the desired date format
    final DateFormat formatter = DateFormat('dd/MM/yyyy');

    // Format the DateTime object to the desired format
    String formattedDate = formatter.format(inputDate);

    return formattedDate;
  }

  // String convertToDesiredFormat(String inputDateString) {
  //   final inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ss.SSS');
  //   final outputFormat = DateFormat('dd/MM/yyyy');

  //   final inputDate = inputFormat.parse(inputDateString);
  //   final outputDate = outputFormat.format(inputDate);

  //   return outputDate;
  // }
}
