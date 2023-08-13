import 'package:flutter/material.dart';

void main() {
  runApp(const Destini());
}

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Destini'),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.teal,
        body: const DestiniBody(),
      ),
    );
  }
}

class DestiniBody extends StatefulWidget {
  const DestiniBody({super.key});

  @override
  State<DestiniBody> createState() => _DestiniBodyState();
}

class _DestiniBodyState extends State<DestiniBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      constraints: const BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Expanded(
              flex: 6,
              child: Center(
                child: Text('Story will show here'),
              ),
            ),
            Expanded(
              flex: 1,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                child: const Text(
                  'option 1',
                  style: TextStyle(fontSize: 25.0, color: Colors.red),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.green,
                child: const Text(
                  'option 2',
                  style: TextStyle(fontSize: 25.0, color: Colors.yellow),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
