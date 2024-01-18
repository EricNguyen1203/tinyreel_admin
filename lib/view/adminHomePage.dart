import 'package:admin/theme/color.dart';
import 'package:admin/view/signInScreen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //setting the expansion function for the navigation rail
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //Let's start by adding the Navigation Rail
          NavigationRail(
              extended: isExpanded,
              backgroundColor: Colors.lightBlue,
              unselectedIconTheme:
                  IconThemeData(color: ThemeConstants.White, opacity: 1),
              unselectedLabelTextStyle: TextStyle(
                color: ThemeConstants.White,
              ),
              selectedIconTheme: IconThemeData(color: Colors.blueAccent),
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("Home"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.support),
                  label: Text("Support"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.report),
                  label: Text("Report"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text("Settings"),
                ),
              ],
              selectedIndex: 0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(60.0, 0, 60.0, 10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //let's add the navigation menu for this project
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            //let's trigger the navigation expansion
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          icon: Icon(Icons.menu),
                        ),
                        Image.asset('assets/logo.png'),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //Now let's start with the dashboard main rapports
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.people,
                                        size: 26.0,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Users",
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "1.2M Users",
                                    style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.video_camera_back,
                                        size: 26.0,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Posts",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "3.2M Posts",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.monetization_on_outlined,
                                        size: 26.0,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Revenue",
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "2.300 \$",
                                    style: TextStyle(
                                      fontSize: 36,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Now let's set the article section
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 300.0,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search ID User",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    //let's set the filter section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: ThemeConstants
                                    .DarkBlue, // Màu nền xanh dương
                              ),
                              child: Text(
                                'Content',
                                style: TextStyle(
                                    color: Colors.white), // Chữ màu trắng
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary:
                                    Colors.lightBlue, // Màu nền xanh dương nhạt
                              ),
                              child: Text(
                                'BlueTick',
                                style: TextStyle(
                                    color: Colors.white), // Chữ màu trắng
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary:
                                    Colors.lightBlue, // Màu nền xanh dương nhạt
                              ),
                              child: Text(
                                'Block',
                                style: TextStyle(
                                    color: Colors.white), // Chữ màu trắng
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DropdownButton(
                                hint: Text("Filter by"),
                                items: [
                                  DropdownMenuItem(
                                    value: "Date",
                                    child: Text("Date"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Comments",
                                    child: Text("Comments"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Views",
                                    child: Text("Views"),
                                  ),
                                ],
                                onChanged: (value) {}),
                            SizedBox(
                              width: 20.0,
                            ),
                            DropdownButton(
                                hint: Text("Order by"),
                                items: [
                                  DropdownMenuItem(
                                    value: "Date",
                                    child: Text("Date"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Comments",
                                    child: Text("Comments"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Views",
                                    child: Text("Views"),
                                  ),
                                ],
                                onChanged: (value) {}),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    //Now let's add the Table
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DataTable(
                            headingRowColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.grey.shade200),
                            columns: [
                              DataColumn(label: Text("ID")),
                              DataColumn(label: Text("Post ID")),
                              DataColumn(label: Text("Reports")),
                              DataColumn(label: Text("Views")),
                              DataColumn(label: Text("Comments")),
                              DataColumn(label: Text("Details")),
                              DataColumn(label: Text("Block")),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text("@12309")),
                                DataCell(Text("03112023_0001")),
                                DataCell(Text("51")),
                                DataCell(Text("2.3K Views")),
                                DataCell(Text("102 Comments")),
                                DataCell(Text(
                                  "See more",
                                  style: TextStyle(
                                    color: ThemeConstants
                                        .DarkBlue, // Chữ màu trắng
                                    fontWeight: FontWeight.bold, // Chữ đậm
                                    decoration:
                                        TextDecoration.underline, // Gạch chân
                                  ),
                                )),
                                DataCell(
                                  CheckboxListTile(
                                    value: false, // Giá trị checkbox
                                    onChanged: (bool? value) {},
                                    controlAffinity: ListTileControlAffinity
                                        .leading, // Vị trí checkbox
                                  ),
                                )
                              ]),
                              DataRow(cells: [
                                DataCell(Text("@12459")),
                                DataCell(Text("0566923_0001")),
                                DataCell(Text("5465")),
                                DataCell(Text("3.5K Views")),
                                DataCell(Text("1122 Comments")),
                                DataCell(Text(
                                  "See more",
                                  style: TextStyle(
                                    color: ThemeConstants
                                        .DarkBlue, // Chữ màu trắng
                                    fontWeight: FontWeight.bold, // Chữ đậm
                                    decoration:
                                        TextDecoration.underline, // Gạch chân
                                  ),
                                )),
                                DataCell(
                                  CheckboxListTile(
                                    value: false, // Giá trị checkbox
                                    onChanged: (bool? value) {},
                                    controlAffinity: ListTileControlAffinity
                                        .leading, // Vị trí checkbox
                                  ),
                                )
                              ]),
                              DataRow(cells: [
                                DataCell(Text("@124709")),
                                DataCell(Text("09122003_0001")),
                                DataCell(Text("4.5K")),
                                DataCell(Text("8.5K Views")),
                                DataCell(Text("1.6K Comments")),
                                DataCell(Text(
                                  "See more",
                                  style: TextStyle(
                                    color: ThemeConstants
                                        .DarkBlue, // Chữ màu trắng
                                    fontWeight: FontWeight.bold, // Chữ đậm
                                    decoration:
                                        TextDecoration.underline, // Gạch chân
                                  ),
                                )),
                                DataCell(
                                  CheckboxListTile(
                                    value: false, // Giá trị checkbox
                                    onChanged: (bool? value) {},
                                    controlAffinity: ListTileControlAffinity
                                        .leading, // Vị trí checkbox
                                  ),
                                )
                              ]),
                            ]),
                        //Now let's set the pagination
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "1",
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "2",
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "3",
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                                (route) => false);
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(100.0, 50.0),
                            primary:
                                Colors.lightBlue, // Màu nền xanh dương nhạt
                          ),
                          child: Text(
                            'Logout',
                            style: TextStyle(
                                color: Colors.white), // Chữ màu trắng
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
