import 'package:flutter/material.dart';


class PageNotFound extends StatefulWidget {
  const PageNotFound({super.key});


  @override
  State<PageNotFound> createState() => _PageNotFoundState();
}


class _PageNotFoundState extends State<PageNotFound> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("60-UI | $runtimeType");
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Page Not found"),
      ),
    );
  }
}
