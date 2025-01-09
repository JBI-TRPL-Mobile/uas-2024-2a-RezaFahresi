import 'package:flutter/material.dart';
import '../widgets/app_bottom_navigation.dart';
import '../widgets/category_chip.dart';
import '../widgets/top_courses_grid.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reza'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner with Gradient Background
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Colors.blue[300]!, Colors.blue[800]!],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Welcome, Reza!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Text Section with Subtle Divider
              Text(
                'Keep Moving Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              Divider(
                height: 32,
                thickness: 1,
                color: Colors.grey[300],
              ),
              // Categories Section with Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  CategoryChip(label: 'Development', icon: Icons.code),
                  CategoryChip(label: 'IT & Software', icon: Icons.computer),
                  CategoryChip(label: 'UI/UX Design', icon: Icons.design_services),
                  CategoryChip(label: 'Business', icon: Icons.business),
                  CategoryChip(label: 'Finance & Business', icon: Icons.attach_money),
                  CategoryChip(label: 'Personal Growth', icon: Icons.self_improvement),
                ],
              ),
              Divider(
                height: 32,
                thickness: 1,
                color: Colors.grey[300],
              ),
              // Top Courses Section with Subtle Shadow
              Text(
                'Top Courses',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TopCoursesGrid(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNavigation(),
    );
  }
}