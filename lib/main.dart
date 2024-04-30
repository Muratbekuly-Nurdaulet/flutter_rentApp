import 'package:flutter/cupertino.dart';
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
        appBar: AppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildFooter(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildHeader(),
                  SizedBox(height: 25),
                  _buildWeatherDescription(),
                  SizedBox(height: 20),
                  _buildTemperatureForecast(),
                  SizedBox(height: 45),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherDescription() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[100], // Change color here
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Icon(Icons.public, color: Colors.blue, size: 30,),
                SizedBox(width: 10),
                Text(
                  "Где арендовать",
                  style: TextStyle(color: Colors.white, // Change color here
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
              ],
            ),
          ),
          Divider(height: 10,),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Icon(Icons.hourglass_empty, color: Colors.blue, size: 30,),
                SizedBox(width: 10),
                Text(
                  "Когда",
                  style: TextStyle(color: Colors.white, // Change color here
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'Посуточная аренда недвижимости',
              style: TextStyle(
                color: Colors.blue[900], // Change color here
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTemperatureForecast() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[200], // Change color here
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(19),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.house_sharp, color: Colors.blue[700], size: 50,),
                  SizedBox(height: 10),
                  Text(
                    "Мои заселения",
                    style: TextStyle(
                      color: Colors.white, // Change color here
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue, // Change color here
      selectedLabelStyle: TextStyle(
          color: Colors.blue, fontWeight: FontWeight.w600),
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.key, color: Colors.blue),
            onPressed: () {
              // Action for 'Снять' button
            },
          ),
          label: 'Снять',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.airplane_ticket, color: Colors.grey),
            onPressed: () {
              // Action for 'Сдать' button
            },
          ),
          label: 'Сдать',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.person, color: Colors.grey),
            onPressed: () {
              // Action for 'Профиль' button
            },
          ),
          label: 'Профиль',
        ),
      ],
    );
  }
}



