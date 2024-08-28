import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KisanDeals',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'KisanDeals'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: DropdownButton<String>(
              underline: SizedBox(),
              items: ['EN', 'हिन्दी'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.location_pin),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text('Sultanpur'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Explore Our Features',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              padding: EdgeInsets.all(16.0),
              children: [
                _buildFeatureCard(
                  icon: Icons.add,
                  title: 'Buy / Sell',
                ),
                _buildFeatureCard(
                  icon: Icons.trending_up,
                  title: 'View Mandi Prices',
                ),
                _buildFeatureCard(
                  icon: Icons.people,
                  title: 'View Buyers',
                ),
                _buildFeatureCard(
                  icon: Icons.handshake,
                  title: 'View Sellers',
                ),
                _buildFeatureCard(
                  icon: Icons.egg,
                  title: 'Egg Prices',
                ),
                _buildFeatureCard(
                  icon: Icons.bar_chart,
                  title: 'Explore Mandi Price Trends',
                  extra: Icon(Icons.star_rate),
                ),
                _buildFeatureCard(
                  icon: Icons.notifications,
                  title: 'Alerts for Daily Price Changes',
                  extra: Icon(Icons.star_rate),
                ),
                _buildFeatureCard(
                  icon: Icons.phone_android,
                  title: 'Download KisanDeals Mobile App',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Buyers'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Sellers'),
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
            icon: Icon(Icons.trending_up),
            label: 'Mandi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Buy/Sell',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    Widget? extra,
  }) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48.0,
                color: Colors.teal,
              ),
              SizedBox(height: 16.0),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (extra != null) SizedBox(height: 8.0),
              if (extra != null) extra,
            ],
          ),
        ),
      ),
    );
  }
}
