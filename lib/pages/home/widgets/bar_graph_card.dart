import 'package:flutter/material.dart';

class BarGraphCard extends StatefulWidget {
  const BarGraphCard({super.key});

  @override
  State<BarGraphCard> createState() => _BarGraphCardState();
}

class _BarGraphCardState extends State<BarGraphCard> {
  final List<bool> _isSelected = [true, false];

  void _updateSelection(int index) {
    setState(() {
      for (int buttonIndex = 0; buttonIndex < _isSelected.length; buttonIndex++) {
        if (buttonIndex == index) {
          _isSelected[buttonIndex] = true;
        } else {
          _isSelected[buttonIndex] = false;
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
     child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
              constraints: const BoxConstraints(
                minHeight: 400, // Set your desired minimum height
                minWidth: 380,  // Set your desired minimum width
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                        Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.purple[50],
                      ),
                      child:const Center(child: Icon(Icons.access_time, color: Colors.purple,)),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: ,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 4),
                          child: Text(
                           "Shift",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                      ),
                      SizedBox(height:5),
                      Text(
                            "10",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                   ],
                  ),
                  const SizedBox(width:30),
                  const SizedBox(height: 10,),
                  ToggleButtons(
                    isSelected: _isSelected,
                    onPressed: _updateSelection,
                    selectedColor: Colors.purple[50],
                    color: Colors.white,
                    fillColor: Colors.purple[50],
                    renderBorder: true,
                    borderColor: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Today', style: TextStyle(fontSize: 18, color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Upcoming', style: TextStyle(fontSize: 18, color: Colors.black)),
                        ), 
                    ],

                     ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Container(
                      constraints: const BoxConstraints(
                        minHeight: 100, // Set your desired minimum height
                        minWidth: 300,  // Set your desired minimum width
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple[100],
                      ),
                      child:const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "8:00 A.M - 11:00 AM",
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 16),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      "50 staff",
                                      style: TextStyle(color: Colors.purple, fontSize: 13),
                                    ),
                                  ],
                                ),
                            Row(
                              children: [
                                Text(
                                  "Manager:",
                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                Text(
                                  "Thomas Shelby, john Wick",
                                  style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                        ],
                       ),
                        ),
                      const SizedBox(height: 15,),
                  Container(
                      constraints: const BoxConstraints(
                        minHeight: 100, // Set your desired minimum height
                        minWidth: 300,  // Set your desired minimum width
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple[100],
                      ),
                      child:const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "8:00 A.M - 11:00 AM",
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 16),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      "40staff",
                                      style: TextStyle(color: Colors.purple, fontSize: 13),
                                    ),
                                  ],
                                ),
                            Row(
                              children: [
                                Text(
                                  "Manager:",
                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                Text(
                                  "Brad Pitt",
                                  style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                        ],
                       ),
                        ),
                        const SizedBox(height: 15,),
                  Container(
                      constraints: const BoxConstraints(
                        minHeight: 100, // Set your desired minimum height
                        minWidth: 300,  // Set your desired minimum width
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple[100],
                      ),
                      child:const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "8:00 A.M - 11:00 AM",
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 16),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      "25 staff",
                                      style: TextStyle(color: Colors.purple, fontSize: 13),
                                    ),
                                  ],
                                ),
                            Row(
                              children: [
                                Text(
                                  "Manager:",
                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                Text(
                                  "Tom Cruise",
                                  style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                        ],
                       ),
                        ),
                       ],
                     ),
                   ),
                   const SizedBox(width: 15,),
                   Column(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 200, // Set your desired minimum height
                          minWidth: 450,  // Set your desired minimum width
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                             children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.purple[50],
                                    ),
                                    child:const Center(child: Icon(Icons.cases_outlined, color: Colors.purple,)),
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 15, bottom: 4),
                                        child: Text(
                                        "Part-time jobs",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal),
                                        ),
                                    ),
                                    SizedBox(height:1),
                                    SizedBox(width: 5,),
                                    Text(
                                          "120",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),   
                                  ],
                                ),
                                 const SizedBox(width: 160,), 
                                 const Text(
                                      "All jobs",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.purple
                                      ),
                                    ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 15,),
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 200, // Set your desired minimum height
                          minWidth: 450,  // Set your desired minimum width
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.purple[50],
                                    ),
                                    child:const Center(child: Icon(Icons.payment, color: Colors.purple,)),
                                  ),
                                ),
                                const SizedBox(width: 1,),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: ,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 15, bottom: 4),
                                        child: Text(
                                        "Payroll",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal),
                                        ),
                                    ),
                                    SizedBox(height:1),
                                    Text(
                                          "20",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                    SizedBox(width: 100,), 
                                  ],
                                ),
                                const SizedBox(width: 150),
                                const Text(
                                      "All Payroll",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.purple
                                      ),
                                    ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                   )
                   
        ],
      ),
    );
  }
}
