import 'package:flutter/material.dart';

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


class NotificationPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two tabs: All and Important
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close popup
                  },
                ),
              ],
            ),
          ),
          TabBar(
            indicatorColor: Colors.redAccent[400],
            labelColor: Colors.redAccent[400],
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'ALL'),
              Tab(text: 'Important'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                // Content for "All" tab
                ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar1.jpg'), // Replace with your image path
                      ),
                      title: Text('All Notification 1'),
                      subtitle: Text('Description for notification 1'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar1.jpg'), // Replace with your image path
                      ),
                      title: Text('All Notification 2'),
                      subtitle: Text('Description for notification 2'),
                    ),
                  ],
                ),
                // Content for "Important" tab
                ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar1.jpg'), // Replace with your image path
                      ),
                      title: Text('Important Notification 1'),
                      subtitle: Text('Description for important notification 1'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar1.jpg'), // Replace with your image path
                      ),
                      title: Text('Important Notification 2'),
                      subtitle: Text('Description for important notification 2'),
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




void showNotificationPopup(BuildContext context, {required String title, required String content}) {
  showDialog(
    context: context,
    barrierDismissible: true, // Allows tapping outside to close
    builder: (BuildContext context) {
      return Dialog(
                  insetPadding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  child: NotificationPopup(),
                );

    }
  );
}
  
