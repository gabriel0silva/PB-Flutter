// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('AppBar')
          ),
        ),
        body: PageView(
          controller: _pageController,
          children: [
            Column(children: [
              Container(  
                height: 200,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                  'Olá Mundo!',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    color: Colors.red,
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Text('Container 1')
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Text('Container 1')
                    ),
                  )
                ],
              )
            ],
          ),
          Container(color: Colors.red,),
          Container(color: Colors.yellow)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          onTap: (int page) => _pageController.animateToPage(
            page, 
            duration: Duration(milliseconds: 300), 
            curve: Curves.ease,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: 'Item 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: 'Item 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: 'Item 3'
          ),
        ]),
    );
  }
}