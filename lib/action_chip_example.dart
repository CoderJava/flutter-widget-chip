import 'package:flutter/material.dart';

class ActionChipExample extends StatelessWidget {
  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: Text(
          'Action Chip',
        ),
      ),
      body: Center(
        child: ActionChip(
          label: Text('Start Download'),
          onPressed: () {
            scaffoldState.currentState.showSnackBar(SnackBar(content: Text('Start downloading...')));
          },
          avatar: CircleAvatar(
            child: Icon(Icons.download_rounded, size: 16,),
          ),
        ),
      ),
    );
  }
}
