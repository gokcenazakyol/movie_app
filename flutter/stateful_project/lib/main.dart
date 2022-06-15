import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFDCEDC8),
        appBar: AppBar(
          backgroundColor: const Color(0xFF689F38),
          title: const Text(
            'Top 5 Movies You Should Watch',
            style: TextStyle(fontSize: 20,
            ),
          ),
        ),
        body: Page(),
      )
    );
  }
}


class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  int counter = 0;

  List<String> movieNames = ['A Few Good Men', 'Forrest Gump', 'The Green Mile',
  'The Shawshank Redemption', 'Inception'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Card(
              margin: EdgeInsets.all(20.00),
              color: Color(0xFF8BC34A),
              child: Text(
                'Top 5 Movies You Should Watch',
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'PatrickHand',
                ),
              ),
            ),
            const Text(
              'Tap to poster to see the others',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'PatrickHand',
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FlatButton(
                    highlightColor: Colors.white,
                    splashColor: Colors.grey,
                    onPressed: (){
                      setState((){
                        if (counter < 4){
                          counter += 1;
                        }
                        else{
                          counter = 0;
                        }
                      });

                    },
                    child: Image.asset('assets/images/image_$counter.jpg')),
              ),
            ),
             Card(
               color: Color(0xFF8BC34A),
               child: Text(
                movieNames[counter],
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'PatrickHand'
                ),
            ),
             ),
             Container(
              width: 200,
              child: const Divider(
                height: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
