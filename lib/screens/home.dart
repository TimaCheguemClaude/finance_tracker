import 'package:finance_tracker/screens/home_page.dart';
import 'package:flutter/material.dart'; 
import 'package:google_nav_bar/google_nav_bar.dart'; 
import 'reports_page.dart'; 
import 'settings_page.dart'; 
import 'categories_page.dart';  

class Home extends StatefulWidget {   
  const Home({super.key});    
  
  @override   
  State<Home> createState() => _HomeState(); 
  
  }  
  
  class _HomeState extends State<Home> {   
    int _selectedIndex = 0; 
    // Track the selected index    
    //// Define the pages corresponding to each navigation item   
    final List<Widget> _pages = [     
      HomePage(), // Assuming HomePage() is the widget for the home screen     
      const ReportsPage(),     
      const CategoriesPage(),     
      const Settings(),    
      ];    
      
  @override   
  Widget build(BuildContext context) {     
    return Scaffold(      // 
    appBar: AppBar(title: const Text('Tima Claude')),        
    body: _pages[_selectedIndex],        
    bottomNavigationBar: buildBottomNavigationBar(),     
    );   
    }    

  Widget buildBottomNavigationBar() {     
      return Container(      
         color: const Color.fromARGB(255, 71, 10, 82),       
         child: Padding(         
          padding: const EdgeInsets.all(8.1),         
          child: GNav(           
            backgroundColor: const Color.fromARGB(255, 82, 10, 95),           
            color: Colors.white,          
            activeColor: Colors.white,           
            tabBackgroundColor: Colors.blueGrey,           
            gap: 8,           
            selectedIndex: _selectedIndex, 
            // Corrected placement           
            onTabChange: (index) {             
              setState(() {               
                _selectedIndex = index;            
                 });           
                 },           
                 tabs: const [             
                  GButton(               
                    icon: Icons.home,               
                    text: 'Home',            
                     ),             
                     GButton(               
                      icon: Icons.bar_chart,              
                       text: 'Report',            
                        ),            
                         GButton(               
                          icon: Icons.category,              
                           text: 'Fields', 
                           // Added text for consistency            
                            ),             
                            GButton(               
                              icon: Icons.settings,               
                              text: 'Settings',             
                              ),           
      ],         
    ),       
   ),     
  );   
 } 
}