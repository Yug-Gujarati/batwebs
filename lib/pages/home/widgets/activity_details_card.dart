import 'package:flutter/material.dart';
import 'package:flutter_dashboard/model/health_model.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  final List<HealthModel> healthDetails = const [
    HealthModel(
        icon: Icons.people_outline, value: "5,200", title: "Staff"),
    HealthModel(icon: Icons.person_add_alt, value: "55", title: "Manager"),
    HealthModel(
        icon: Icons.insert_page_break_outlined, value: "6", title: "Pending Applications"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
     child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
              constraints: const BoxConstraints(
                minHeight: 100, // Set your desired minimum height
                minWidth: 300,  // Set your desired minimum width
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
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
                      child:const Center(child: Icon(Icons.people_outline, color: Colors.purple,)),
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
                           "Staff",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                      ),
                      SizedBox(height:5),
                      Text(
                            "5,200",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                   ],
                  ),
                  const SizedBox(width: 20,),
                  const Text(
                        "+ 25 this month",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.green,
                        ),
                      )
                ],
              ),
            ),
            const SizedBox(width: 10,),
            Container(
              constraints: const BoxConstraints(
                minHeight: 100, // Set your desired minimum height
                minWidth: 300,  // Set your desired minimum width
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
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
                      child:const Center(child: Icon(Icons.people_outline, color: Colors.purple,)),
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
                           "Manager",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                      ),
                      SizedBox(height:5),
                      Text(
                            "55",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                   ],
                  ),
                  const SizedBox(width: 20),
                  const Text(
                        "- 2 this month",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.red,
                        ),
                      ),
                ],
                
              ),
            ),
            const SizedBox(width:10),
            Container(
              constraints: const BoxConstraints(
                minHeight: 100, // Set your desired minimum height
                minWidth: 300,  // Set your desired minimum width
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
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
                      child:const Center(child: Icon(Icons.people_outline, color: Colors.purple,)),
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
                           "Panding Applications",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                      ),
                      SizedBox(height:2),
                      Text(
                            "6",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                   ],
                  ),
                ],
              ),
            ),
       ],
     ),
    );
  }
}
