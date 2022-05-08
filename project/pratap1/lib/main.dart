import 'package:flutter/material.dart';

void main() => runApp(VaibApp());

class VaibApp extends StatelessWidget {
  const VaibApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          title: const Text(
            "PRATAP",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          elevation: 4.0,
        ),
        body: buildContent(),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: const Color.fromARGB(255, 228, 12, 41),
            items: const [
              BottomNavigationBarItem(
                label: 'home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'settings',
                icon: Icon(Icons.settings),
              ),
            ]),
      ),
    );
  }

  Container buildContent() {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontFamily: "poppins",
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 242, 242, 242)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'images/googlelogo.png',
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      "Sign In with Google",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Opacity(
                        opacity: 0.0,
                        child: Image.asset('images/googlelogo.png')),
                  ],
                )),
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF334D92)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'images/fb_logo.png',
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      "Sign In with Facebook",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Opacity(
                        opacity: 0.0, child: Image.asset('images/fb_logo.png')),
                  ],
                )),
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'images/github_logo.png',
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      "Sign In with Github",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Opacity(
                        opacity: 0.0,
                        child: Image.asset('images/github_logo.png')),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
