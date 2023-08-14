import 'package:destini/story_brain.dart';
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
  StoryBrain stry = StoryBrain();

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
            Expanded(
              flex: 6,
              child: Center(
                child: Text(
                  stry.getStory(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    stry.nextStory(1);
                  });
                },
                color: Colors.blue,
                child: Text(
                  stry.getOpt1(),
                  style: const TextStyle(fontSize: 20.0, color: Colors.red),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: Visibility(
                visible: stry.buttonShouldBeVisible(),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stry.nextStory(2);
                    });
                  },
                  color: Colors.green,
                  child: Text(
                    stry.getOpt2(),
                    style:
                        const TextStyle(fontSize: 20.0, color: Colors.yellow),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
