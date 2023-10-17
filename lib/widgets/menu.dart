import 'package:flutter/material.dart';
import 'package:flutter_dashboard/Responsive.dart';

class Menu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Menu({super.key, required this.scaffoldKey});

  @override
  // ignore: library_private_types_in_public_api
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  int selected = 0;
   bool _isStaffMenuOpen = false;

  void _toggleStaffMenu() {
    setState(() {
      _isStaffMenuOpen = !_isStaffMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.grey[800]!,
              width: 1,
            ),
          ),
          color: Colors.white),
      child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 15.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "RapydHR",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Responsive.isMobile(context) ? 15 : 25,
                  ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[0] = true
                                        : _isHovering[0] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.bar_chart_rounded,
                                    color: _isHovering[0]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Deshboard",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[0]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[0]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[1] = true
                                        : _isHovering[1] = false;
                                  });
                                },
                        onTap: () {
                           _toggleStaffMenu();
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.people_outline,
                                    color: _isHovering[1]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Staff",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[1]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[1]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                ),
                                const SizedBox(width:80),
                                Icon(
                                  _isStaffMenuOpen
                                      ? Icons.arrow_drop_down
                                      : Icons.arrow_right,
                                  color: _isHovering[1] ? Colors.purple : Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (_isStaffMenuOpen)
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Padding(
                                padding: EdgeInsets.only(right: 100,),
                                child: Text(
                                  "Staff List",
                                  style: TextStyle(fontSize: 14,color:Colors.black,fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right:100),
                                child: Text(
                                  "Applications",
                                  style: TextStyle(fontSize: 14,color:Colors.black,fontWeight: FontWeight.normal),
                                ),
                              
                            ),
                          ],
                        ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[2] = true
                                        : _isHovering[2] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.manage_accounts_outlined,
                                    color: _isHovering[2]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Manager",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[2]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[2]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                ),
                                const SizedBox(width: 52),
                                Icon(
                                  Icons.arrow_right,
                                  color: _isHovering[2] ? Colors.purple : Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[3] = true
                                        : _isHovering[3] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.cases_outlined,
                                    color: _isHovering[3]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Jobs",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[3]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[3]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[4] = true
                                        : _isHovering[4] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.payment,
                                    color: _isHovering[4]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Payroll",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[4]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[4]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                ),
                                const SizedBox(width:65),
                                Icon(
                                  Icons.arrow_right,
                                  color: _isHovering[4] ? Colors.purple : Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[5] = true
                                        : _isHovering[5] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.contact_page_outlined,
                                    color: _isHovering[5]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Report",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[5]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[5]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[6] = true
                                        : _isHovering[6] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.person_2_outlined,
                                    color: _isHovering[6]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Appraisal",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[6]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[6]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[7] = true
                                        : _isHovering[7] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.manage_accounts_outlined,
                                    color: _isHovering[7]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Manager",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[7]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[7]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 175),
      
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[8] = true
                                        : _isHovering[8] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.settings,
                                    color: _isHovering[8]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Setting",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[8]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[8]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[9] = true
                                        : _isHovering[9] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.help_outline,
                                    color: _isHovering[9]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Help Center",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[9]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[9]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: selected == 0 ? Colors.transparent : Colors.purple,
                      ),
                      child: InkWell(
                        onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[10] = true
                                        : _isHovering[10] = false;
                                  });
                                },
                        onTap: () {
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                                  child: Icon(
                                    Icons.logout,
                                    color: _isHovering[10]
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  "Log Out",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _isHovering[10]
                                        ? Colors.purple
                                        : Colors.black,
                                    fontWeight: _isHovering[10]
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              )),
            ),
    );
  }
}