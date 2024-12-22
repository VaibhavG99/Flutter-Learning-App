import 'package:flutter/material.dart';
import 'notifications.dart';
import 'Stastics.dart';
import 'Search.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(280), // Increase the AppBar height
        child: AppBar(
          backgroundColor: const Color.fromRGBO(6, 21, 107, 1),
          iconTheme: IconThemeData(
          color: Colors.white, // Set drawer icon color to white
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.heat_pump_rounded, color: Colors.orange),
              SizedBox(width: 2),
              Text('08',style: TextStyle(
                color: Colors.orange, // Change text color here
                fontSize: 20, // Customize font size
                fontWeight: FontWeight.bold, // Optional: make text bold
                ),
              ),
              Icon(Icons.arrow_drop_down, color: Colors.orange), // Add another icon
              ],
          ),
          actions: [
            IconButton(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2,),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Text(
                " Statistics ", // <-- Write your custom text here
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold ),
              ),
            ),
            onPressed: () {
              showStasticsPopup(context,title: "Statistics Icon",content: "All your activity");
            },
          ),
            

            IconButton(
            icon: Container(padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2,),
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Icon(Icons.notifications, color: Colors.black,)),
            onPressed: () {
              showNotificationPopup(context,title: "Notifications Icon",content: "All your notifications are here");
            },
          ),
          ],
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              child:Text(
                'Hi user, Welcome Back!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                child: GestureDetector(
                onDoubleTap: () {
                showSearchPopup(context,title: "Learning Program",content: "All your learning resourse");
                },
          child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Courses',
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
        ),
      ),
            Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16), // Optional: rounded corners
                child: Image.network(
                    'assets/banner.jpg', // Replace with your image URL
                    fit: BoxFit.cover, // Ensures the image scales properly
                    height: 120, // Adjust as needed
                    width: double.infinity,
                  ),
              ),
              Positioned(
                top: 12,
                left: 20,
                child: Text(
                  'Ready for a New Challenge?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                    //backgroundColor: Colors.black.withOpacity(0.5), // Semi-transparent background
                  ),
                ),
              ),
              Positioned(
                top: 42,
                left: 20,
                child: Text(
                  'Participate in this hackathon to solve',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    //fontWeight: FontWeight.values(),
                    //backgroundColor: Colors.black.withOpacity(0.5), // Semi-transparent background
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: Text(
                  "Amazon's Warehouse Management",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    //fontWeight: FontWeight.bold,
                    //backgroundColor: Colors.black.withOpacity(0.5), // Semi-transparent background
                  ),
                ),
              ),
              Positioned(
                top: 84,
                left: 20,
                child: GestureDetector(
          onTap: () {
            showStasticsPopup(context,title: "Learning Program",content: "All your learning resourse");
          },
          child: Container(
            width: 260,
            height: 27,
            decoration: BoxDecoration(
              color: Colors.redAccent[400],
              borderRadius: BorderRadius.circular(7),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Learn More',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
              ),
            ],
          ),
        ),
            ],
          ),
        ),
      ),



      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Black circle for profile image
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 22, // Slightly smalleapp2/lib/r white inner circle
                      backgroundImage: AssetImage('assets/profile.png'), // Add a placeholder image in assets
                    ),
                  ),
                  SizedBox(width: 16), // Space between image and text
                  // Candidate details
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Saanvi Patel", // Candidate name
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          // decoration: TextDecoration.underline, // Underline style
                        ),
                      ),
                      Text(
                        "B. Tech Student", // Candidate designation
                        style: TextStyle(
                          color: Colors.white70, // Slightly lighter text
                          fontSize: 14,
                          // decoration: TextDecoration.underline, // Underline style
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Main Items
            ListTile(
              leading: Icon(Icons.book, color: Colors.blue),
              title: Text('Courses'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.assignment, color: Colors.blue),
              title: Text('Assignments'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.bar_chart, color: Colors.blue),
              title: Text('Progress'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.report, color: Colors.blue),
              title: Text('Reports'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article, color: Colors.blue),
              title: Text('Blogs'),
              onTap: () {},
            ),
            Divider(), // Dividing Line
            // Additional Items
            ListTile(
              leading: Icon(Icons.help, color: Colors.black),
              title: Text('Help'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.black),
              title: Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Stack(
        children: [
          // Main Content Area (Optional)
          Center(
            child: Column(
          children: [
            SizedBox(height: 8),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16), // Add padding here
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Optional: Add rounded corners
                  child: Image.network(
                    'assets/Sc1.jpg', // Replace with your image URL
                    fit: BoxFit.cover, // Ensures the image scales properly
                    height: 88, // Adjust as needed
                    width: double.infinity,
                  ),
                ),
              ),
            SizedBox(height: 8),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16), // Add padding here
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Optional: Add rounded corners
                  child: Image.network(
                    'assets/Sc2.jpg', // Replace with your image URL
                    fit: BoxFit.cover, // Ensures the image scales properly
                    height: 67, // Adjust as needed
                    width: double.infinity,
                  ),
                ),
              ),
            SizedBox(height: 8),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16), // Add padding here
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Optional: Add rounded corners
                  child: Image.network(
                    'assets/Sc3.jpg', // Replace with your image URL
                    fit: BoxFit.cover, // Ensures the image scales properly
                    height: 84, // Adjust as needed
                    width: double.infinity,
                  ),
                ),
              ),
            SizedBox(height: 8),
            SizedBox(height: 8),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16), // Add padding here
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Optional: Add rounded corners
                  child: Image.network(
                    'assets/footer.png', // Replace with your image URL
                    fit: BoxFit.cover, // Ensures the image scales properly
                    height: 74, // Adjust as needed
                    width: double.infinity,
                  ),
                ),
              ),
          ],
            ),
          ),
          // Bottom Icons
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Bottom Row Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 0.0), // Adjust bottom padding
              child: InkWell(
                borderRadius: BorderRadius.circular(12), // Ripple effect within rounded corners
                onTap: () {
                // Action on tap
                //showNotificationPopup(context,title: "Home Icon",content: "All your notifications are here");
                print("DecoratedBox clicked!");
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 6, 21, 107), // Background color
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0, // Height padding
                    horizontal: 80.0, // Width padding
                  ),
                  child: Icon(
                    Icons.home,
                    color: Colors.white, // Icon color
                    size: 32, // Icon size
                  ),
                ),
              ),
            ),
          ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 0.0), // Adjust bottom padding
              child: InkWell(
                borderRadius: BorderRadius.circular(12), // Ripple effect within rounded corners
                onTap: () {
                  // Action on tap
                    showNotificationPopup(context,title: "Library Icon",content: "All your saved books are here");
                    //print("DecoratedBox clicked!");
                  },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 6, 21, 107), // Background color
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0, // Height padding
                    horizontal: 80.0, // Width padding
                  ),
                  child: Icon(
                    Icons.book,
                    color: Colors.white, // Icon color
                    size: 32, // Icon size
                  ),
                ),
              ),
            ),
          ),
          ),
                    ],
                  ),
                  // Circular Icon Above the Line
                  Positioned(
                    bottom: 8,
                    child: GestureDetector(
                      onTap: () {
                        print("Circular Icon Pressed");
                      },
                      child: CircleAvatar(
                        radius: 37,
                        child: ClipOval(
                          child: InkWell(
                borderRadius: BorderRadius.circular(12), // Ripple effect within rounded corners
                onTap: () {
                  // Action on tap
                    showNotificationPopup(context,title: "Professions Icon",content: "All your professional works are here");
                    //print("DecoratedBox clicked!");
                  },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 6, 21, 107), // Background color
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0, // Height padding
                    horizontal: 20.0, // Width padding
                  ),
                  child: Icon(
                    Icons.work,
                    color: Colors.white, // Icon color
                    size: 32, // Icon size
                  ),
                ),
              ),
            ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
  Widget _buildPopupContent(BuildContext context, {required String title, required String content}) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Close'),
        ),
      ],
    );
  }
}
