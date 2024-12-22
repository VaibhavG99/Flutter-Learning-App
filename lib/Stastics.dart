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

void showStasticsPopup(BuildContext context, {required String title, required String content}) {

            showDialog(
              context: context,
              barrierDismissible: true,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  titlePadding: EdgeInsets.zero,
                  contentPadding: EdgeInsets.all(16),
                  title: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Statistics',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.close, color: Colors.white),
                          onPressed: () {
                            Navigator.of(context).pop(); // Close popup
                          },
                        ),
                      ],
                    ),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/avatar1.jpg'),
                        ),
                        title: Text('Your learning Activity in the past month'),
                        subtitle: Text('DART'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/avatar2.jpg'),
                        ),
                        title: Text('Your learning Activity in the past 3 months'),
                        subtitle: Text('HTML, CSS, DART'),
                      ),
                    ],
                  ),
                );
              },
            );
}