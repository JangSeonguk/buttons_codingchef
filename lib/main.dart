import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const Buttons(),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Buttons"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                foregroundColor: Colors.yellow,
                fixedSize: const Size(200, 50),
                elevation: 3),
            child: const Text(
              "Elevated button",
            ),
          ),
          const ElevatedButton(onPressed: null, child: Text("Elevated button")),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              fixedSize: const Size(150, 50),
            ),
            child: const Text("Outlined Button"),
          ),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
                foregroundColor: Colors.yellow,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3))),
                fixedSize: const Size(130, 60)),
            child: const Text("Filled Button"),
          ),
          FilledButton.tonal(
            onPressed: () {},
            child: const Text("Next button"),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.deepPurple,
              backgroundColor: const Color.fromARGB(255, 241, 230, 244),
            ),
            child: const Text(
              "Text Button",
              style: TextStyle(fontSize: 30),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_rounded,
                size: 60,
                color: Colors.black,
              )),
          Container(
            alignment: Alignment.center,
            width: 150,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.red],
                )),
            child: const Text(
              "Filled Button",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.large(
            onPressed: () {},
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))),
            backgroundColor: Colors.yellow,
            child: const Icon(
              Icons.add,
              color: Colors.red,
              size: 50,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: const Text(
              "Add",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
            backgroundColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
