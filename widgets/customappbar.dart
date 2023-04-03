import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {


AnimationController animationController;
Animation colorsTween, homeTween, yogaTween, iconTween,drawerTween;
Function()? onPressed;

CustomAppBar({
  required this.animationController,
required this.colorsTween,
required this.drawerTween,
required this.homeTween,
required this.iconTween,
required this.onPressed,
required this.yogaTween
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.black,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context,child)=>AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.work_outline_outlined,
              color: drawerTween.value,
            ),
            onPressed: onPressed,

          ),
          backgroundColor: colorsTween.value,
          elevation: 0,
          title: Row(
            children: [
              Text("YOGA " , style: TextStyle(
                color: homeTween.value,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              Text("JUST DO IT!", style: TextStyle(
                  color: yogaTween.value,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),)
            ],
          ),
          actions: [
            Icon(Icons.notifications , color: iconTween.value,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            )
          ],
      
        ),
        
      ),
    );
  }
}