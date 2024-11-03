import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Container(
      padding: EdgeInsets.all(40),
      color: Colors.brown[100],
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color:  Colors.blue[100],
              borderRadius: BorderRadius.circular(30),
            
            ),
            height: 60,
            child: const  Center(
              child: Text(
                'OOP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
                
              ),
            ),
          ),
          // The second buttton 
          Container(
            margin:const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(30)

            ),

            height: 60,
            child: const Center(
              child: Text(
                'DART',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
                
              ),
            ),

          ),

          // The third button 
          Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
           decoration:  BoxDecoration(
      
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(30),
           ),
           height: 60,
           child: const Center(
            child: Text(
              'FLUTTER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
              
            ),
           ),
  
            
            
          )


        ],
      ),
    
      
    ),




  ));

}