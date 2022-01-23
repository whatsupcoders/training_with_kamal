import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 50,
                    //color: ColorsClass.greenColor,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.access_alarm,
                    size: 50,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.mail_rounded,
                    size: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Main Screen",
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
