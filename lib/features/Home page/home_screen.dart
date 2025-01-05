// home_screen.dart
import 'package:flutter/material.dart';
import 'package:harika_2106/utils/event_card.dart';
import 'package:harika_2106/utils/featured_event.dart';
import 'package:harika_2106/widgets/search_bar.dart';
import 'package:harika_2106/routes/routes_constants.dart'; // Import the routes

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2) { // Profile
        Navigator.pushNamed(context, Routes.profileScreen); // Navigate to ProfileScreen
      } else if (index == 1) { // Search
        Navigator.pushNamed(context, Routes.categoryList); // Navigate to CategoryListScreen
      } else {
        // Stay on HomeScreen
      }
    });
  }

  void _navigateToTicketScreen() {
    Navigator.pushNamed(context, Routes.ticketScreen); // Navigate to TicketScreen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FeaturedEvent(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SearchBarWidget(), // Add the SearchBarWidget below the FeaturedEvent
                  SizedBox(height: 8.0), // Add some spacing between the widgets
                  GestureDetector(
                    onTap: _navigateToTicketScreen, // Add navigation on tap
                    child: EventCard(
                      organizer: 'Debby G.',
                      title: 'Carnival Rides You Won\'t Forget',
                      price: '\$35.00',
                      date: 'Sat, Jan 12',
                      time: '10am',
                      imageUrl: 'assets/carnival.png',
                    ),
                  ),
                  GestureDetector(
                    onTap: _navigateToTicketScreen, // Add navigation on tap
                    child: EventCard(
                      organizer: 'Linda Miron',
                      title: 'Dance on the Streets of SF',
                      price: 'FREE',
                      date: 'Sun, Jan 13',
                      time: '8:00pm',
                      imageUrl: 'assets/dance.png',
                    ),
                  ),
                  GestureDetector(
                    onTap: _navigateToTicketScreen, // Add navigation on tap
                    child: EventCard(
                      organizer: 'You&Mead',
                      title: 'Wine Night',
                      price: '\$120.00',
                      date: 'Sat, Jan 12',
                      time: '10pm',
                      imageUrl: 'assets/wine.png',
                    ),
                  ),
                  GestureDetector(
                    onTap: _navigateToTicketScreen, // Add navigation on tap
                    child: EventCard(
                      organizer: 'Kelly J.',
                      title: 'Rave, Music, Drinks, and more',
                      price: '\$25.00',
                      date: 'Sat, Jan 19',
                      time: '10pm',
                      imageUrl: 'assets/rave.png',
                    ),
                  ),
                  GestureDetector(
                    onTap: _navigateToTicketScreen, // Add navigation on tap
                    child: EventCard(
                      organizer: 'Craig',
                      title: 'Park Day in SF. Come with your dogs',
                      price: 'FREE',
                      date: 'Monday, Jan 14',
                      time: '12pm',
                      imageUrl: 'assets/park.png',
                    ),
                  ),
                  GestureDetector(
                    onTap: _navigateToTicketScreen, // Add navigation on tap
                    child: EventCard(
                      organizer: 'Haley E.',
                      title: 'B2B: Crypto Entering the World of Finance',
                      price: '\$30.00',
                      date: 'Sat, Jan 18',
                      time: '4:00pm',
                      imageUrl: 'assets/crypto.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
