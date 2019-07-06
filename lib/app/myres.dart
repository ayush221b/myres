import 'package:flutter/material.dart';
import 'package:myres/app/ui/views/query_input_loading.dart';

class MyRes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'MyRes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => QueryInputLoadingView(),
      },
    );
  }
}