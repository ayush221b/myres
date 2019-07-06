import 'package:flutter/material.dart';

class QueryInputLoadingView extends StatefulWidget {
  @override
  _QueryInputLoadingViewState createState() => _QueryInputLoadingViewState();
}

class _QueryInputLoadingViewState extends State<QueryInputLoadingView> {
  TextEditingController _queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyRes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(
              'What would you like to have ?',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _queryController,
              decoration: InputDecoration(labelText: 'Please enter your query'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.red,
              child: Text(
                'Get Restaurants',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
