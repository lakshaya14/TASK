import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var quote = "";
  var author = "";
  var onShareClick;
  var onLikeClick;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.pink[100]),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Quotes Of The Day App',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.pink.shade200,
        ),
        body: Center(
          child: Container(
            height: 700,
            width: 700,
            child: Image.asset('lib/image/quotes.jpg'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigate to the second page when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          backgroundColor: Colors.pink[200],
          child: const Icon(Icons.navigate_next_outlined),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.pink[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => debugPrint("Go home"),
                color: Colors.white54,
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {
                  // Navigate to another page when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                color: Colors.white54,
                icon: Icon(Icons.navigate_next),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isLiked = false;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quotes',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.pink.shade200,
      ),
      body: Container(
        color: Colors.pink[100],
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset('lib/image/here.jpg'),
            Spacer(flex: 2),
            Image.asset(
              'lib/image/com.jpg',
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              " A real man smiles in times of trouble, gathers strength from distress and grows brave by reflection. ",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "-Thomas Paine",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FavoriteButton(
                  isFavorite: isLiked,
                  valueChanged: (isFavorite) {
                    setState(() {
                      isLiked = isFavorite;
                    });
                  },
                ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, border: Border.all(width: 1, color: Colors.white)),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.share,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
         floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigate to the second page when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnotherPage()),
            );
          },
          backgroundColor: Colors.pink[200],
          child: const Icon(Icons.navigate_next_outlined),
        ),
      
    );
  }
}

class AnotherPage extends StatefulWidget {
  @override
  _AnotherPageState createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quotes',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.pink.shade200,
      ),
      body: Container(
        color: Colors.pink[100],
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset('lib/image/things.jpg',
          ),
            Spacer(flex: 3),
            Image.asset(
              'lib/image/com.jpg',
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              " To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "–Ralph Waldo Emerson",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FavoriteButton(
                  isFavorite: isLiked,
                  valueChanged: (isFavorite) {
                    setState(() {
                      isLiked = isFavorite;
                    });
                  },
                ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.share,
                      color: Colors.red,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.pink[100],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigate to the second page when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourthPage()),
            );
          },
          backgroundColor: Colors.pink[200],
          child: const Icon(Icons.navigate_next_outlined),
        ),
    );
  }
}

class FourthPage extends StatefulWidget {
  @override
_FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quotes',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.pink.shade200,
      ),
      body: Container(
        color: Colors.pink[100],
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              'lib/image/dream.jpg'),
              Spacer(),
            Image.asset(
              'lib/image/com.jpg',
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              "Get it down. Take chances. It may be bad, but it's the only way you can do anything really good.",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 20),
          
            Text("– William Faulkner",
            style: TextStyle(color: Colors.black),
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FavoriteButton(
                    isFavorite: isLiked,
                    valueChanged: (value) {
                      setState(() {
                        isLiked = value;
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, border: Border.all(width: 1, color: Colors.white)),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.share,
                      color: Colors.red,
                    ),
                  ),
            
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigate to the another page when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>FifthPage())
            );
          },
          backgroundColor: Colors.pink[200],
          child: const Icon(Icons.navigate_next_outlined),
          
        ),
        
    );
  }
}

class FifthPage extends StatefulWidget {
  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quotes',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.pink.shade200,
      ),
      body: Container(
        color: Colors.pink[100],
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              'lib/image/shine.jpg'),
              Spacer(),
            Image.asset(
              'lib/image/com.jpg',
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 30,
            ),
            const Text("Good things come to people who wait, but better things come to those who go out and get them.",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 20),
          
            Text("-Winston Churchill",
            style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FavoriteButton(
                    isFavorite: isChecked,
                    valueChanged: (value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.share,
                      color: Colors.red,
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigate to the another page when the button is pressed
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => SecondPage())
      
            );
          },
          backgroundColor: Colors.pink[200],
          child: const Icon(Icons.navigate_before_outlined),
        ),  
    );
  }
}
