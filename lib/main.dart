import 'package:flutter/material.dart';
import 'package:training_with_kamal/theme/config.dart';
import 'package:training_with_kamal/theme/second_screen.dart';
import 'package:training_with_kamal/theme/theme_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    myTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      themeMode: myTheme.currentTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text flutter Theme"),
        leading: IconButton(
          icon: const Icon(Icons.brightness_4_sharp),
          onPressed: () {
            myTheme.toggleTheme();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ElevatedButton(
                  onPressed: null,
                  child: Text("Login"),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text("SignIn"),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text("Password"),
                )
              ],
            ),
            Text(
              "Main Screen",
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SecondScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
