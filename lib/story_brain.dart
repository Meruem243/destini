import 'story.dart';

class StoryBrain {
  final List<Story> _storyData = [
    Story(
        storyLine:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        opt1: 'I\'ll hop in. Thanks for the help!',
        opt2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyLine: 'He nods slowly, unphased by the question.',
        opt1: 'At least he\'s honest. I\'ll climb in.',
        opt2: 'Wait, I know how to change a tire.'),
    Story(
        storyLine:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        opt1: 'I love Elton John! Hand him the cassette tape.',
        opt2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyLine:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        opt1: 'Restart',
        opt2: ''),
    Story(
        storyLine:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        opt1: 'Restart',
        opt2: ''),
    Story(
        storyLine:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        opt1: 'Restart',
        opt2: ''),
  ];

  String getStory(int storyNum) {
    return _storyData[storyNum].storyLine;
  }

  String getOpt1(int optNum) {
    return _storyData[optNum].opt1;
  }

  String getOpt2(int optNum) {
    return _storyData[optNum].opt2;
  }

  int storyNumber = 0;

  void nextStory(int optNumSelected) {
    if (storyNumber == 0) {
      if (optNumSelected == 1) {
        storyNumber = 2;
      } else {
        storyNumber = 1;
      }
    } else if (storyNumber == 1) {
      if (optNumSelected == 1) {
        storyNumber = 2;
      } else {
        storyNumber = 3;
      }
    } else if (storyNumber == 2) {
      if (optNumSelected == 1) {
        storyNumber = 5;
      } else {
        storyNumber = 4;
      }
    }
  }
}
