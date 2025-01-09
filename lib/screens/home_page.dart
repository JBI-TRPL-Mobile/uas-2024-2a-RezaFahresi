import 'package:flutter/material.dart';
import 'package:template_project/widgets/category_chip.dart';
import '../widgets/app_bottom_navigation.dart';
import '../widgets/top_courses_grid.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome William'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(height: 16),
              // Text Section
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
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 16),
              // Categories
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
                    child: Text('See All'),
                  ),
                ],
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  CategoryChip(label: 'Development'),
                  CategoryChip(label: 'IT & Software'),
                  CategoryChip(label: 'UI/UX Design'),
                  CategoryChip(label: 'Business'),
                  CategoryChip(label: 'Finance & Business'),
                  CategoryChip(label: 'Personal Growth'),
                ],
              ),
              SizedBox(height: 16),
              // Top Courses
              Text(
                'Top Courses',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              TopCoursesGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNavigation(),
    );
  }
}
