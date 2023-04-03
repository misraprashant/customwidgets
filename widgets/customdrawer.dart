import 'dart:math';

import 'package:flutter/material.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 740,

      child: Drawer(shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(17)),
    backgroundColor: Colors.grey,
    
        child: Column(
          children: [ 
            
             Container(
              
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   IconButton(
                         icon: Icon(Icons.arrow_back,color: Colors.white,),
                         onPressed: (){
                           Navigator.pop(context);
                         },
                       ),
                 ],
               ),
             ),

           
            Container(height: 200,
            
            decoration: BoxDecoration(
              


              image: DecorationImage(image:NetworkImage("https://cdn-icons-png.flaticon.com/512/2871/2871258.png"),
              fit: BoxFit.fill),
            ),
            
            
            // 
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(8,15,8,8),
               child: ListTile(title: Text("reset",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
               leading: Icon(Icons.restart_alt),),
             ),
              Padding(
               padding: const EdgeInsets.fromLTRB(8,15,8,8),
               child: ListTile(title: Text("profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
               leading: Icon(Icons.person_2_outlined),),
             ), Padding(
               padding: const EdgeInsets.fromLTRB(8,15,8,8),
               child: ListTile(title: Text("home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
               leading: Icon(Icons.home_outlined),),
             ), Padding(
               padding: const EdgeInsets.fromLTRB(8,15,8,8),
               child: ListTile(title: Text("settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
               leading: Icon(Icons.settings),),
             ), Padding(
               padding: const EdgeInsets.fromLTRB(8,15,8,8),
               child: ListTile(title: Text("logout",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
               leading: Icon(Icons.login_outlined),),
             ),
    
          ],
        ),
      ),
    );
  }
}