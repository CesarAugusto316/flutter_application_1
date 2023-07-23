import 'package:flutter/material.dart';

class FunctionsScreen extends StatefulWidget {
  const FunctionsScreen({super.key});

  @override
  State<FunctionsScreen> createState() => _FunctionsScreenState();
}

class _FunctionsScreenState extends State<FunctionsScreen> {
  int _counter = 0;

  void incremet() {
    setState(() {
      ++_counter;
    });
  }

  void decrement() {
    setState(() {
      --_counter;
    });
  }

  void reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200],
        title: const Text(
          'Functions Screen',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(size: 100),
              Text(
                "$_counter",
                style:
                    const TextStyle(fontSize: 130, fontWeight: FontWeight.w500),
              ),
              Text(
                _counter == 1 || _counter == -1 ? "click" : "clicks",
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 120,
              ),
            ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 30),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: decrement,
          ),
          const SizedBox(width: 16),
          CustomButton(
            icon: Icons.restart_alt,
            onPressed: reset,
          ),
          const SizedBox(width: 16),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: incremet,
          ),
        ],
      ),
    ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        foregroundColor: Colors.blueAccent,
        shape: const StadiumBorder(),
        onPressed: onPressed,
        elevation: 3,
        child: Icon(
          icon,
          weight: 400,
        ));
  }
}
