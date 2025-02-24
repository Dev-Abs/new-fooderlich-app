import 'package:flutter/material.dart';
// import './components/card1.dart';
import './components/card2.dart';
import './components/card3.dart';
import './models/explore_recipe.dart';
import './screens/explore_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    // ignore: lines_longer_than_80_chars
    // Card1(recipe: ExploreRecipe(id: '1', cardType: 'Card', title: 'The art of Dough', subtitle: 'Editor\'s Choice', message: 'Learn to make the perfect bread.', backgroundImage: 'assets/magazine_pics/mag1.png', authorName: 'Abdullah Ubaid', role: 'Founder')),
    ExploreScreen(),
    // ignore: lines_longer_than_80_chars
    Card2(recipe: ExploreRecipe(id: '2', cardType: '', title: 'Takeout Noodles', backgroundImage: 'assets/food_pics/food_burger.jpg', authorName: 'Abdullah U.', role: 'Kitchen Ninja', profileImage: 'assets/profile_pics/abdullahubaid.jpg')),
    Card3(recipe: ExploreRecipe(id: '3', cardType: '', title: 'Test Recipe', backgroundImage: 'assets/food_pics/food_spaghetti.jpg', tags: ['carrot', 'ginger'])),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'To Buy',
          ),
        ],
      ),
    );
  }
}
