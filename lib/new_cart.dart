

import 'package:flutter/material.dart';
import 'package:flutter_application_1/orders_model.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CartBody extends StatefulWidget {
  const CartBody({super.key});
  @override
  State<CartBody> createState() => _CartBodyState();
}
class _CartBodyState extends State<CartBody> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usercartDetails.length,      
   
      itemBuilder:(context, index) =>  Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Dismissible(
          key: Key(
              usercartDetails[index].toString()              
              ),
        
          direction: DismissDirection.endToStart,
            onDismissed: (direction){
              
              setState((){
                usercartDetails.removeAt(index);
      
              });
            },
            
            
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFF6E6),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              children: [
              Spacer(),
            SvgPicture.asset("assets/icons/Trash.svg")
            ]
            ),
            ),            
            child: CartItemCard(              
              userOrders:   
               usercartDetails[index],
            )
            ),
      ),
    
    );
  }
}

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key, required this.userOrders, 
   
  }) : super(key: key);

final UserOrders userOrders;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio
          (
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset(
                userOrders.imagAssets
            
                ),
            )
            ),
        ),
        SizedBox(width: 20,),
        Column(
          children: [
         Text(
           userOrders.pTitle,
          
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            ),
            maxLines: 2,
            ),
            const SizedBox(height: 10,),
            Text.rich(              
              TextSpan(
              text:"${userOrders.pPrice}\$",
              style: TextStyle(color: Colors.amber),
              children: [
                TextSpan(text: "x ${userOrders.pCount}",
                style: TextStyle(color: Colors.black),
                )
              ]
             )
          
             )
        //    )
        ],
        )
      ],
    );
  }
  
}