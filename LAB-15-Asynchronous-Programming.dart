import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating a network call delay
  List<String> quotes = [
    "Knowledge is power. - Francis Bacon",
    "Success is the result of proper work. - William Edwards Deming",
    "Thinking is the real power. - Napoleon Hill",
    "The best way to predict the future is to invent it. - Alan Kay",
    "Innovation distinguishes between a leader and a follower. - Steve Jobs",
    "Life is all about owning; Mind your own or Own your mind "
  ];
  return quotes[Random().nextInt(quotes.length)];
}

void main() async {
  print("Fetching quote...");
  String quote = await fetchQuote();
  print("Here is your quote: $quote");
}
