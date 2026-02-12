import 'package:flutter/material.dart';

// This is the main entry of this application 
void main() => runApp(const App());

// I'm initializing a statefull
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

// this is the application logic
class AppState extends State<App> {
  // a variable that will be used to check the state of our panel
  bool open = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // this is the text displayed on the top of the screen
        appBar: AppBar(title: const Text("ExpansionPanel")),
        // in this body, with singlechildscrollview widget it will allow our items to scroll
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            // this will help us to switch the state of our variable
            expansionCallback: (i, _) => setState(() => open = !open),
            children: [
              ExpansionPanel(
                isExpanded: open, //this is our state being applied to isExpanded property on expansionPanel
                headerBuilder: (_, __) => const ListTile(title: Text("Your Email")), // headerBuilder is going to be the text visible even when collapsed
                body: const ListTile(title: Text("email_id@example.com")), // this body will contain the text to hide
              ),
            ],
          ),
        ),
      ),
    );
  }
}
