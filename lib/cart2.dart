
import 'dart:core';

import 'package:flutter_application_1/details.dart';
import 'package:flutter_application_1/new_cart.dart';
import 'package:flutter_application_1/orders_model.dart';
import 'package:flutter_application_1/payment.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:flutter/material.dart';



class cart2 extends StatefulWidget{
  const cart2({super.key});

  @override
  State<cart2> createState() => _cart2();

}


class _cart2 extends State<cart2> {

  int counter=0;

  void _incremeant(){
    setState(() {
      counter++;
    });
  }

  void _decrease(){
    setState(() {
      counter--;
    });
  }

 
  @override
  Widget build(BuildContext context){
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text("my cart".toUpperCase(),
            style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
      ),),
      GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>CartBody()))
  ;      },
        child: const Icon(Icons.history,color: Colors.amber,))
          ],
        ),
      ),

      



      body: Container(

        decoration: BoxDecoration(
          color: Colors.orange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Column(
          children: <Widget>[

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> const DetailsScreenBody(
                  imagAssets:
             'assets/images/pizza.jpg', 
             productTiltle:
                  'special pizza', 
          
              productPrice:    30.0, productDescription: 'd ljnklrjnhkljh',
                )
                ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                child: cardContainr(
                  'assets/images/pizza.jpg', 
                  'special pizza', 
                  '$counter', 
                  '\$30.0', 
                  ElevatedButton(
                    onPressed: _incremeant,
                    child: const Icon(Icons.add),
                    ), 
                  ElevatedButton(
                    onPressed: _decrease,
                    child: const Icon(Icons.remove),
                    ),
                  ),
              ),
            ),

              InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> const DetailsScreenBody(
                  imagAssets:
             'assets/images/chicken.jpg', 
             productTiltle:
                  'special pizza', 
          
              productPrice:    30.0, productDescription: 'd ljnklrjnhkljh',
                )
                ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                child: cardContainr(
                  'assets/images/chicken.jpg', 
                  'special pizza', 
                  '$counter', 
                  '\$30.0', 
                  ElevatedButton(
                    onPressed: _incremeant,
                    child: const Icon(Icons.add),
                    ), 
                  ElevatedButton(
                    onPressed: _decrease,
                    child: const Icon(Icons.remove),
                    ),
                  ),
              ),
            ),

              InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> const DetailsScreenBody(
                  imagAssets:
             'assets/images/pizza.jpg', 
             productTiltle:
                  'special pizza', 
          
              productPrice:    30.0, productDescription: 'd ljnklrjnhkljh',
                )
                ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                child: cardContainr(
                  'assets/images/pizza.jpg', 
                  'special pizza', 
                  '$counter', 
                  '\$30.0', 
                  ElevatedButton(
                    onPressed: _incremeant,
                    child: const Icon(Icons.add),
                    ), 
                  ElevatedButton(
                    onPressed: _decrease,
                    child: const Icon(Icons.remove),
                    ),
                  ),
              ),
            ),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                 child: const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 0.0),
                   child: TextField(
                    decoration: InputDecoration(
                      hintText: "promo code",
                      border: InputBorder.none
                    ),
                                 ),
                 ), 
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 1.0),
              child: smallContainer("sub total  ", "\$300.00"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 1.0),
              child: smallContainer("shipping  ", "\$10.00"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 1.0),
              child: smallContainer("total         ", "\$310.00"),
            ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25)
                  ),
              
                  child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> payment()));
                  }, 
                  child: const Text("Finalize Order", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),),
                  )
                ),
              ),

              const GNav(
                          backgroundColor: Colors.white,
                          color: Colors.white,
                          activeColor: Colors.red,
                          tabs: [
                    
                            GButton(icon: (Icons.home_outlined),
                            //active: false,
                            text: "Home",
                            iconColor: Colors.black,                 
                            ),

                            GButton(icon: (Icons.shopping_cart_outlined),
                            text: "Cart",
                            iconColor: Colors.black,
                            //onPressed: 
                            //active: true,
                            ),

                            GButton(icon: (Icons.favorite_border),
                            text: "Favorite",
                            iconColor: Colors.black,
                            //active: false,
                            ),
                    
                          ],
                        ),


                               
            

          ],
        ),
      ),

    );



  }//build


  Container cardContainr( String image, String foodName, String quality, String money, ElevatedButton buttonAdd, ElevatedButton buttonminus){
    return Container(
      height: 100,
      width: 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: <Widget>[
          
            Image.asset(image),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Text(foodName),
                  Text("$money")
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only( left: 20),
              child: Container(
                height: 40,
                width: 144,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 222, 222),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [


                    ElevatedButton(
                      onPressed: _incremeant,
                      child: const Icon(Icons.add,),
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 156, 106),
                        
                        ),
                      ),

                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
                      child: Text('$quality'),
                    ),

                    ElevatedButton(
                      onPressed: _decrease,
                      child: const Icon(Icons.remove),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 156, 106),
                        //fixedSize:Size(10, 10)
                        ),
                      
                      ),

                  ],
                ),
              ),
            )
           
            
        ],
      ),
    );
  }
  
  pay() {}


  Container smallContainer(String txt, String num){
    return Container(
      height: 30,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$txt",style: TextStyle(fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:220.0),
            child: Text("$num"),
          )
        ],
      ),
    );
  }
}
