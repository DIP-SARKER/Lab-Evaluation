import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildTopPart(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }

  Widget _buildActivityTile({required String title, required String subtitle}) {
    return ListTile(
      leading: Icon(Icons.event_note, color: Colors.indigo),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        title: Text(
          "1Card",
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 27.0,
              color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 115, 68, 255),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(FontAwesome.ellipsis_vertical_solid))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 115, 68, 255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/img.jpg'),
                  ),
                  Text(
                    "DIP SARKER",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "sarker15-5274@diu.edu.bd",
                    style: TextStyle(
                        fontSize: 15.0,
                        color: const Color.fromARGB(255, 209, 206, 206)),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle Home tap
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle Settings tap
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle Logout tap
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 115, 68, 255),
            padding: EdgeInsets.only(top: 10, right: 20, left: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildTopPart(Icons.dashboard, "Dashboard"),
                    _buildTopPart(Icons.miscellaneous_services, "Services"),
                    _buildTopPart(Icons.swap_horiz, "Transaction"),
                    _buildTopPart(Icons.perm_identity, "Virtual ID"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/img.jpg'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("DIP SARKER",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text("221-15-5274",
                            style: TextStyle(color: Colors.white70)),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Card Status: Active",
                              style: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text("****",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    letterSpacing: 4)),
                            SizedBox(height: 5),
                            Text("Usable Balance",
                                style: TextStyle(color: Colors.white70)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 100,
                      padding: EdgeInsets.symmetric(vertical: 13),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 2.0),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.qr_code, color: Colors.white, size: 40),
                          SizedBox(height: 5),
                          Text("Scan Me",
                              style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(16),
            color: Colors.grey[200],
            child: Text("Recent Activities",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildActivityTile(
                  title: "1:31pm on Saturday 1st February 2025",
                  subtitle: "Last Login (24069RA21C)",
                ),
                _buildActivityTile(
                  title: "6:23pm on Friday 27th December 2024",
                  subtitle: "Last Logout (24069RA21C)",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
